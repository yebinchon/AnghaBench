
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int vbg_core_close_session (int *) ;

__attribute__((used)) static int vbg_misc_device_close(struct inode *inode, struct file *filp)
{
 vbg_core_close_session(filp->private_data);
 filp->private_data = ((void*)0);
 return 0;
}
