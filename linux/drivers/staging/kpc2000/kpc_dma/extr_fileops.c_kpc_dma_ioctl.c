
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ private_data; } ;
struct dev_private_data {unsigned long card_addr; unsigned long user_ctl; unsigned long user_ctl_last; long user_sts; } ;


 long ENOTTY ;





__attribute__((used)) static
long kpc_dma_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioctl_param)
{
 struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;

 switch (ioctl_num) {
 case 130:
  priv->card_addr = ioctl_param; return priv->card_addr;
 case 129:
  priv->user_ctl = ioctl_param; return priv->user_ctl;
 case 128:
  priv->user_ctl_last = ioctl_param; return priv->user_ctl_last;
 case 131:
  return priv->user_sts;
 }

 return -ENOTTY;
}
