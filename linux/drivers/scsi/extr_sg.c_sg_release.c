
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_5__ {scalar_t__ open_cnt; int exclude; int open_rel_lock; int open_wait; int device; } ;
struct TYPE_4__ {int f_ref; TYPE_2__* parentdp; } ;
typedef TYPE_1__ Sg_fd ;
typedef TYPE_2__ Sg_device ;


 int ENXIO ;
 int KERN_INFO ;
 int SCSI_LOG_TIMEOUT (int,int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_autopm_put_device (int ) ;
 int sg_printk (int ,TYPE_2__*,char*) ;
 int sg_remove_sfp ;
 int wake_up_interruptible (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static int
sg_release(struct inode *inode, struct file *filp)
{
 Sg_device *sdp;
 Sg_fd *sfp;

 if ((!(sfp = (Sg_fd *) filp->private_data)) || (!(sdp = sfp->parentdp)))
  return -ENXIO;
 SCSI_LOG_TIMEOUT(3, sg_printk(KERN_INFO, sdp, "sg_release\n"));

 mutex_lock(&sdp->open_rel_lock);
 scsi_autopm_put_device(sdp->device);
 kref_put(&sfp->f_ref, sg_remove_sfp);
 sdp->open_cnt--;



 if (sdp->exclude) {
  sdp->exclude = 0;
  wake_up_interruptible_all(&sdp->open_wait);
 } else if (0 == sdp->open_cnt) {
  wake_up_interruptible(&sdp->open_wait);
 }
 mutex_unlock(&sdp->open_rel_lock);
 return 0;
}
