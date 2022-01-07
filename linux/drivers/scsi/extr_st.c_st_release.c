
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape {scalar_t__ door_locked; int device; scalar_t__ in_use; int buffer; } ;
struct inode {int dummy; } ;
struct file {struct scsi_tape* private_data; } ;


 scalar_t__ ST_LOCKED_AUTO ;
 int do_door_lock (struct scsi_tape*,int ) ;
 int normalize_buffer (int ) ;
 int scsi_autopm_put_device (int ) ;
 int scsi_tape_put (struct scsi_tape*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int st_use_lock ;

__attribute__((used)) static int st_release(struct inode *inode, struct file *filp)
{
 int result = 0;
 struct scsi_tape *STp = filp->private_data;

 if (STp->door_locked == ST_LOCKED_AUTO)
  do_door_lock(STp, 0);

 normalize_buffer(STp->buffer);
 spin_lock(&st_use_lock);
 STp->in_use = 0;
 spin_unlock(&st_use_lock);
 scsi_autopm_put_device(STp->device);
 scsi_tape_put(STp);

 return result;
}
