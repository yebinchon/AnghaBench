
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio_info {int * name; int release; int open; int mmap; int irq; int irqcontrol; TYPE_1__* mem; int version; } ;
struct tcmu_mailbox {int flags; void* cmdr_size; void* cmdr_off; int version; } ;
struct tcmu_dev {int max_blocks; int data_size; scalar_t__ nl_reply_supported; int * data_bitmap; struct tcmu_mailbox* mb_addr; struct uio_info uio_info; int kref; int node; void* ring_size; void* data_off; void* cmdr_size; scalar_t__ dbi_thresh; int cmdr_lock; } ;
struct TYPE_4__ {int hw_block_size; int hw_max_sectors; int hw_queue_depth; scalar_t__ emulate_write_cache; } ;
struct se_device {TYPE_2__ dev_attrib; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_3__ {char* name; int memtype; void* size; scalar_t__ addr; } ;


 void* CMDR_OFF ;
 void* CMDR_SIZE ;
 int DATA_BLOCK_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_ALIGNED (void*) ;
 int PAGE_SIZE ;
 struct tcmu_dev* TCMU_DEV (struct se_device*) ;
 int TCMU_MAILBOX_FLAG_CAP_OOOC ;
 int TCMU_MAILBOX_FLAG_CAP_READ_LEN ;
 int TCMU_MAILBOX_VERSION ;
 int UIO_IRQ_CUSTOM ;
 int UIO_MEM_NONE ;
 int WARN_ON (int) ;
 int __stringify (int ) ;
 int bitmap_free (int *) ;
 int * bitmap_zalloc (int,int ) ;
 int kfree (int *) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int root_udev ;
 int root_udev_mutex ;
 int tcmu_dev_kref_release ;
 int tcmu_irqcontrol ;
 scalar_t__ tcmu_kern_cmd_reply_supported ;
 int tcmu_mmap ;
 int tcmu_open ;
 int tcmu_release ;
 int tcmu_root_device ;
 int tcmu_send_dev_add_event (struct tcmu_dev*) ;
 int tcmu_update_uio_info (struct tcmu_dev*) ;
 int uio_register_device (int ,struct uio_info*) ;
 int uio_unregister_device (struct uio_info*) ;
 int vfree (struct tcmu_mailbox*) ;
 struct tcmu_mailbox* vzalloc (void*) ;

__attribute__((used)) static int tcmu_configure_device(struct se_device *dev)
{
 struct tcmu_dev *udev = TCMU_DEV(dev);
 struct uio_info *info;
 struct tcmu_mailbox *mb;
 int ret = 0;

 ret = tcmu_update_uio_info(udev);
 if (ret)
  return ret;

 info = &udev->uio_info;

 mutex_lock(&udev->cmdr_lock);
 udev->data_bitmap = bitmap_zalloc(udev->max_blocks, GFP_KERNEL);
 mutex_unlock(&udev->cmdr_lock);
 if (!udev->data_bitmap) {
  ret = -ENOMEM;
  goto err_bitmap_alloc;
 }

 udev->mb_addr = vzalloc(CMDR_SIZE);
 if (!udev->mb_addr) {
  ret = -ENOMEM;
  goto err_vzalloc;
 }


 udev->cmdr_size = CMDR_SIZE - CMDR_OFF;
 udev->data_off = CMDR_SIZE;
 udev->data_size = udev->max_blocks * DATA_BLOCK_SIZE;
 udev->dbi_thresh = 0;


 mb = udev->mb_addr;
 mb->version = TCMU_MAILBOX_VERSION;
 mb->flags = TCMU_MAILBOX_FLAG_CAP_OOOC | TCMU_MAILBOX_FLAG_CAP_READ_LEN;
 mb->cmdr_off = CMDR_OFF;
 mb->cmdr_size = udev->cmdr_size;

 WARN_ON(!PAGE_ALIGNED(udev->data_off));
 WARN_ON(udev->data_size % PAGE_SIZE);
 WARN_ON(udev->data_size % DATA_BLOCK_SIZE);

 info->version = __stringify(TCMU_MAILBOX_VERSION);

 info->mem[0].name = "tcm-user command & data buffer";
 info->mem[0].addr = (phys_addr_t)(uintptr_t)udev->mb_addr;
 info->mem[0].size = udev->ring_size = udev->data_size + CMDR_SIZE;
 info->mem[0].memtype = UIO_MEM_NONE;

 info->irqcontrol = tcmu_irqcontrol;
 info->irq = UIO_IRQ_CUSTOM;

 info->mmap = tcmu_mmap;
 info->open = tcmu_open;
 info->release = tcmu_release;

 ret = uio_register_device(tcmu_root_device, info);
 if (ret)
  goto err_register;


 if (dev->dev_attrib.hw_block_size == 0)
  dev->dev_attrib.hw_block_size = 512;

 if (!dev->dev_attrib.hw_max_sectors)
  dev->dev_attrib.hw_max_sectors = 128;
 if (!dev->dev_attrib.emulate_write_cache)
  dev->dev_attrib.emulate_write_cache = 0;
 dev->dev_attrib.hw_queue_depth = 128;




 if (udev->nl_reply_supported >= 0)
  udev->nl_reply_supported = tcmu_kern_cmd_reply_supported;





 kref_get(&udev->kref);

 ret = tcmu_send_dev_add_event(udev);
 if (ret)
  goto err_netlink;

 mutex_lock(&root_udev_mutex);
 list_add(&udev->node, &root_udev);
 mutex_unlock(&root_udev_mutex);

 return 0;

err_netlink:
 kref_put(&udev->kref, tcmu_dev_kref_release);
 uio_unregister_device(&udev->uio_info);
err_register:
 vfree(udev->mb_addr);
 udev->mb_addr = ((void*)0);
err_vzalloc:
 bitmap_free(udev->data_bitmap);
 udev->data_bitmap = ((void*)0);
err_bitmap_alloc:
 kfree(info->name);
 info->name = ((void*)0);

 return ret;
}
