
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int dummy; } ;
struct vhost_net {struct vhost_dev dev; } ;
struct file {struct vhost_net* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int vhost_chr_poll (struct file*,struct vhost_dev*,int *) ;

__attribute__((used)) static __poll_t vhost_net_chr_poll(struct file *file, poll_table *wait)
{
 struct vhost_net *n = file->private_data;
 struct vhost_dev *dev = &n->dev;

 return vhost_chr_poll(file, dev, wait);
}
