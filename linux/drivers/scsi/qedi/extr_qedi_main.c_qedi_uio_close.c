
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {struct qedi_uio_dev* priv; } ;
struct qedi_uio_dev {int uio_dev; struct qedi_ctx* qedi; } ;
struct qedi_ctx {int flags; } ;
struct inode {int dummy; } ;


 int UIO_DEV_OPENED ;
 int clear_bit (int ,int *) ;
 int qedi_ll2_free_skbs (struct qedi_ctx*) ;

__attribute__((used)) static int qedi_uio_close(struct uio_info *uinfo, struct inode *inode)
{
 struct qedi_uio_dev *udev = uinfo->priv;
 struct qedi_ctx *qedi = udev->qedi;

 udev->uio_dev = -1;
 clear_bit(UIO_DEV_OPENED, &qedi->flags);
 qedi_ll2_free_skbs(qedi);
 return 0;
}
