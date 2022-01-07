
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int dummy; } ;
struct vhost_net {struct vhost_dev dev; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {struct vhost_net* private_data; } ;
typedef int ssize_t ;


 int vhost_chr_write_iter (struct vhost_dev*,struct iov_iter*) ;

__attribute__((used)) static ssize_t vhost_net_chr_write_iter(struct kiocb *iocb,
     struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct vhost_net *n = file->private_data;
 struct vhost_dev *dev = &n->dev;

 return vhost_chr_write_iter(dev, from);
}
