
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio_info {char* name; struct qedi_uio_dev* priv; int release; int open; int irq; int version; TYPE_1__* mem; } ;
struct qedi_uio_dev {int ll2_ring_size; int ll2_buf_size; int uio_dev; TYPE_2__* pdev; scalar_t__ ll2_buf; scalar_t__ ll2_ring; scalar_t__ uctrl; struct uio_info qedi_uinfo; } ;
struct qedi_uio_ctrl {int dummy; } ;
struct qedi_ctx {int dbg_ctx; struct qedi_uio_dev* udev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {unsigned long addr; int size; void* memtype; } ;


 int ENOMEM ;
 int QEDI_ERR (int *,char*) ;
 int QEDI_MODULE_VERSION ;
 int UIO_IRQ_CUSTOM ;
 void* UIO_MEM_LOGICAL ;
 int qedi_uio_close ;
 int qedi_uio_open ;
 int uio_register_device (int *,struct uio_info*) ;

__attribute__((used)) static int qedi_init_uio(struct qedi_ctx *qedi)
{
 struct qedi_uio_dev *udev = qedi->udev;
 struct uio_info *uinfo;
 int ret = 0;

 if (!udev)
  return -ENOMEM;

 uinfo = &udev->qedi_uinfo;

 uinfo->mem[0].addr = (unsigned long)udev->uctrl;
 uinfo->mem[0].size = sizeof(struct qedi_uio_ctrl);
 uinfo->mem[0].memtype = UIO_MEM_LOGICAL;

 uinfo->mem[1].addr = (unsigned long)udev->ll2_ring;
 uinfo->mem[1].size = udev->ll2_ring_size;
 uinfo->mem[1].memtype = UIO_MEM_LOGICAL;

 uinfo->mem[2].addr = (unsigned long)udev->ll2_buf;
 uinfo->mem[2].size = udev->ll2_buf_size;
 uinfo->mem[2].memtype = UIO_MEM_LOGICAL;

 uinfo->name = "qedi_uio";
 uinfo->version = QEDI_MODULE_VERSION;
 uinfo->irq = UIO_IRQ_CUSTOM;

 uinfo->open = qedi_uio_open;
 uinfo->release = qedi_uio_close;

 if (udev->uio_dev == -1) {
  if (!uinfo->priv) {
   uinfo->priv = udev;

   ret = uio_register_device(&udev->pdev->dev, uinfo);
   if (ret) {
    QEDI_ERR(&qedi->dbg_ctx,
      "UIO registration failed\n");
   }
  }
 }

 return ret;
}
