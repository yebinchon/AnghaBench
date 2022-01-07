
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {scalar_t__ dev_in_use; int autopurge; scalar_t__ autorecording; int * path; } ;
struct inode {int dummy; } ;
struct file {struct vmlogrdr_priv_t* private_data; } ;


 int iucv_path_sever (int *,int *) ;
 int kfree (int *) ;
 int pr_warn (char*) ;
 int vmlogrdr_recording (struct vmlogrdr_priv_t*,int ,int ) ;

__attribute__((used)) static int vmlogrdr_release (struct inode *inode, struct file *filp)
{
 int ret;

 struct vmlogrdr_priv_t * logptr = filp->private_data;

 iucv_path_sever(logptr->path, ((void*)0));
 kfree(logptr->path);
 logptr->path = ((void*)0);
 if (logptr->autorecording) {
  ret = vmlogrdr_recording(logptr,0,logptr->autopurge);
  if (ret)
   pr_warn("vmlogrdr: failed to stop recording automatically\n");
 }
 logptr->dev_in_use = 0;

 return 0;
}
