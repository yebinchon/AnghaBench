
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {int dev_in_use; int buffer_free; int * path; int autopurge; scalar_t__ autorecording; scalar_t__ iucv_path_severed; scalar_t__ connection_established; int system_service; int priv_lock; int receive_ready; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct vmlogrdr_priv_t* private_data; } ;


 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int MAXMINOR ;
 int O_NONBLOCK ;
 int atomic_set (int *,int ) ;
 int conn_wait_queue ;
 int iminor (struct inode*) ;
 int * iucv_path_alloc (int,int ,int ) ;
 int iucv_path_connect (int *,int *,int ,int *,int *,struct vmlogrdr_priv_t*) ;
 int kfree (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int pr_err (char*,int ,int) ;
 int pr_warn (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct vmlogrdr_priv_t* sys_ser ;
 int vmlogrdr_iucv_handler ;
 int vmlogrdr_recording (struct vmlogrdr_priv_t*,int,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int vmlogrdr_open (struct inode *inode, struct file *filp)
{
 int dev_num = 0;
 struct vmlogrdr_priv_t * logptr = ((void*)0);
 int connect_rc = 0;
 int ret;

 dev_num = iminor(inode);
 if (dev_num >= MAXMINOR)
  return -ENODEV;
 logptr = &sys_ser[dev_num];




 if (filp->f_flags & O_NONBLOCK)
  return -EOPNOTSUPP;


 spin_lock_bh(&logptr->priv_lock);
 if (logptr->dev_in_use) {
  spin_unlock_bh(&logptr->priv_lock);
  return -EBUSY;
 }
 logptr->dev_in_use = 1;
 logptr->connection_established = 0;
 logptr->iucv_path_severed = 0;
 atomic_set(&logptr->receive_ready, 0);
 logptr->buffer_free = 1;
 spin_unlock_bh(&logptr->priv_lock);


 filp->private_data = logptr;


 if (logptr->autorecording) {
  ret = vmlogrdr_recording(logptr,1,logptr->autopurge);
  if (ret)
   pr_warn("vmlogrdr: failed to start recording automatically\n");
 }


 logptr->path = iucv_path_alloc(10, 0, GFP_KERNEL);
 if (!logptr->path)
  goto out_dev;
 connect_rc = iucv_path_connect(logptr->path, &vmlogrdr_iucv_handler,
           logptr->system_service, ((void*)0), ((void*)0),
           logptr);
 if (connect_rc) {
  pr_err("vmlogrdr: iucv connection to %s "
         "failed with rc %i \n",
         logptr->system_service, connect_rc);
  goto out_path;
 }





 wait_event(conn_wait_queue, (logptr->connection_established)
     || (logptr->iucv_path_severed));
 if (logptr->iucv_path_severed)
  goto out_record;
 nonseekable_open(inode, filp);
 return 0;

out_record:
 if (logptr->autorecording)
  vmlogrdr_recording(logptr,0,logptr->autopurge);
out_path:
 kfree(logptr->path);
 logptr->path = ((void*)0);
out_dev:
 logptr->dev_in_use = 0;
 return -EIO;
}
