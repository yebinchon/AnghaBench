
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi433_instance {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct pi433_instance* private_data; } ;


 int kfree (struct pi433_instance*) ;

__attribute__((used)) static int pi433_release(struct inode *inode, struct file *filp)
{
 struct pi433_instance *instance;

 instance = filp->private_data;
 kfree(instance);
 filp->private_data = ((void*)0);

 return 0;
}
