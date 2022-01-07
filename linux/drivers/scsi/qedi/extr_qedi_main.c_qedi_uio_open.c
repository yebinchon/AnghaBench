
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {struct qedi_uio_dev* priv; } ;
struct qedi_uio_dev {int uio_dev; struct qedi_ctx* qedi; } ;
struct qedi_ctx {int flags; } ;
struct inode {int dummy; } ;


 int CAP_NET_ADMIN ;
 int EBUSY ;
 int EPERM ;
 int UIO_DEV_OPENED ;
 int capable (int ) ;
 int iminor (struct inode*) ;
 int qedi_reset_uio_rings (struct qedi_uio_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int qedi_uio_open(struct uio_info *uinfo, struct inode *inode)
{
 struct qedi_uio_dev *udev = uinfo->priv;
 struct qedi_ctx *qedi = udev->qedi;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (udev->uio_dev != -1)
  return -EBUSY;

 rtnl_lock();
 udev->uio_dev = iminor(inode);
 qedi_reset_uio_rings(udev);
 set_bit(UIO_DEV_OPENED, &qedi->flags);
 rtnl_unlock();

 return 0;
}
