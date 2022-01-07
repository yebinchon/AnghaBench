
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fw_info {int suballocator_size; int mailbox_size; int mailbox_status; int mailbox_cmd; } ;
struct TYPE_3__ {int size; int paddr; } ;
struct allegro_dev {TYPE_1__ suballocator; int v4l2_dev; int mbox_status; int mbox_command; } ;


 int EIO ;
 int allegro_alloc_buffer (struct allegro_dev*,TYPE_1__*,int ) ;
 int allegro_free_buffer (struct allegro_dev*,TYPE_1__*) ;
 int allegro_mbox_init (struct allegro_dev*,int *,int ,int ) ;
 int allegro_mcu_disable_interrupts (struct allegro_dev*) ;
 int allegro_mcu_enable_interrupts (struct allegro_dev*) ;
 int allegro_mcu_reset (struct allegro_dev*) ;
 int allegro_mcu_send_init (struct allegro_dev*,int ,int ) ;
 int allegro_mcu_start (struct allegro_dev*) ;
 int allegro_mcu_wait_for_init_timeout (struct allegro_dev*,int) ;
 int v4l2_err (int *,char*,...) ;

__attribute__((used)) static int allegro_mcu_hw_init(struct allegro_dev *dev,
          const struct fw_info *info)
{
 int err;

 allegro_mbox_init(dev, &dev->mbox_command,
     info->mailbox_cmd, info->mailbox_size);
 allegro_mbox_init(dev, &dev->mbox_status,
     info->mailbox_status, info->mailbox_size);

 allegro_mcu_enable_interrupts(dev);


 allegro_mcu_start(dev);
 err = allegro_mcu_wait_for_init_timeout(dev, 5000);
 if (err < 0) {
  v4l2_err(&dev->v4l2_dev,
    "mcu did not send INIT after reset\n");
  err = -EIO;
  goto err_disable_interrupts;
 }

 err = allegro_alloc_buffer(dev, &dev->suballocator,
       info->suballocator_size);
 if (err) {
  v4l2_err(&dev->v4l2_dev,
    "failed to allocate %zu bytes for suballocator\n",
    info->suballocator_size);
  goto err_reset_mcu;
 }

 allegro_mcu_send_init(dev, dev->suballocator.paddr,
         dev->suballocator.size);
 err = allegro_mcu_wait_for_init_timeout(dev, 5000);
 if (err < 0) {
  v4l2_err(&dev->v4l2_dev,
    "mcu failed to configure sub-allocator\n");
  err = -EIO;
  goto err_free_suballocator;
 }

 return 0;

err_free_suballocator:
 allegro_free_buffer(dev, &dev->suballocator);
err_reset_mcu:
 allegro_mcu_reset(dev);
err_disable_interrupts:
 allegro_mcu_disable_interrupts(dev);

 return err;
}
