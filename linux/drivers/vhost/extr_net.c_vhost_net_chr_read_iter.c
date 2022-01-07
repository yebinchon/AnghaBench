
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int dummy; } ;
struct vhost_net {struct vhost_dev dev; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct vhost_net* private_data; } ;
typedef int ssize_t ;


 int O_NONBLOCK ;
 int vhost_chr_read_iter (struct vhost_dev*,struct iov_iter*,int) ;

__attribute__((used)) static ssize_t vhost_net_chr_read_iter(struct kiocb *iocb, struct iov_iter *to)
{
 struct file *file = iocb->ki_filp;
 struct vhost_net *n = file->private_data;
 struct vhost_dev *dev = &n->dev;
 int noblock = file->f_flags & O_NONBLOCK;

 return vhost_chr_read_iter(dev, to, noblock);
}
