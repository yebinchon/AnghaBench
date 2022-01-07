
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mport_cdev_priv {int async_queue; } ;
struct file {struct mport_cdev_priv* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int mport_cdev_fasync(int fd, struct file *filp, int mode)
{
 struct mport_cdev_priv *priv = filp->private_data;

 return fasync_helper(fd, filp, mode, &priv->async_queue);
}
