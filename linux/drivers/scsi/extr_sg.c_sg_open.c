
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_flags; TYPE_1__* private_data; } ;
struct TYPE_16__ {struct request_queue* request_queue; } ;
struct TYPE_15__ {int open_cnt; int exclude; TYPE_7__* device; int open_rel_lock; int open_wait; int d_ref; int sg_tablesize; scalar_t__ sgdebug; } ;
typedef TYPE_1__ Sg_fd ;
typedef TYPE_1__ Sg_device ;


 int EBUSY ;
 int ENXIO ;
 int EPERM ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int KERN_INFO ;
 int O_ACCMODE ;
 int O_EXCL ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int PTR_ERR (TYPE_1__*) ;
 int SCSI_LOG_TIMEOUT (int,int ) ;
 int iminor (struct inode*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int open_wait (TYPE_1__*,int) ;
 int queue_max_segments (struct request_queue*) ;
 int scsi_autopm_get_device (TYPE_7__*) ;
 int scsi_autopm_put_device (TYPE_7__*) ;
 scalar_t__ scsi_block_when_processing_errors (TYPE_7__*) ;
 int scsi_device_get (TYPE_7__*) ;
 int scsi_device_put (TYPE_7__*) ;
 TYPE_1__* sg_add_sfp (TYPE_1__*) ;
 int sg_device_destroy ;
 TYPE_1__* sg_get_dev (int) ;
 int sg_printk (int ,TYPE_1__*,char*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int
sg_open(struct inode *inode, struct file *filp)
{
 int dev = iminor(inode);
 int flags = filp->f_flags;
 struct request_queue *q;
 Sg_device *sdp;
 Sg_fd *sfp;
 int retval;

 nonseekable_open(inode, filp);
 if ((flags & O_EXCL) && (O_RDONLY == (flags & O_ACCMODE)))
  return -EPERM;
 sdp = sg_get_dev(dev);
 if (IS_ERR(sdp))
  return PTR_ERR(sdp);

 SCSI_LOG_TIMEOUT(3, sg_printk(KERN_INFO, sdp,
          "sg_open: flags=0x%x\n", flags));



 retval = scsi_device_get(sdp->device);
 if (retval)
  goto sg_put;

 retval = scsi_autopm_get_device(sdp->device);
 if (retval)
  goto sdp_put;




 if (!((flags & O_NONBLOCK) ||
       scsi_block_when_processing_errors(sdp->device))) {
  retval = -ENXIO;

  goto error_out;
 }

 mutex_lock(&sdp->open_rel_lock);
 if (flags & O_NONBLOCK) {
  if (flags & O_EXCL) {
   if (sdp->open_cnt > 0) {
    retval = -EBUSY;
    goto error_mutex_locked;
   }
  } else {
   if (sdp->exclude) {
    retval = -EBUSY;
    goto error_mutex_locked;
   }
  }
 } else {
  retval = open_wait(sdp, flags);
  if (retval)
   goto error_mutex_locked;
 }


 if (flags & O_EXCL)
  sdp->exclude = 1;

 if (sdp->open_cnt < 1) {
  sdp->sgdebug = 0;
  q = sdp->device->request_queue;
  sdp->sg_tablesize = queue_max_segments(q);
 }
 sfp = sg_add_sfp(sdp);
 if (IS_ERR(sfp)) {
  retval = PTR_ERR(sfp);
  goto out_undo;
 }

 filp->private_data = sfp;
 sdp->open_cnt++;
 mutex_unlock(&sdp->open_rel_lock);

 retval = 0;
sg_put:
 kref_put(&sdp->d_ref, sg_device_destroy);
 return retval;

out_undo:
 if (flags & O_EXCL) {
  sdp->exclude = 0;
  wake_up_interruptible(&sdp->open_wait);
 }
error_mutex_locked:
 mutex_unlock(&sdp->open_rel_lock);
error_out:
 scsi_autopm_put_device(sdp->device);
sdp_put:
 scsi_device_put(sdp->device);
 goto sg_put;
}
