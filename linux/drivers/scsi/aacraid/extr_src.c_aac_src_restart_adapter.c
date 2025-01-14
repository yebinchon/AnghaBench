
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int adapter_enable_int; } ;
struct aac_dev {TYPE_2__* pdev; scalar_t__ msi_enabled; scalar_t__ sa_firmware; TYPE_1__ a_ops; } ;
struct TYPE_6__ {int OMR; } ;
struct TYPE_5__ {int dev; } ;


 int ENODEV ;
 int HW_IOP_RESET ;
 int HW_SOFT_RESET ;
 int KERNEL_PANIC ;
 TYPE_3__ MUnit ;
 int aac_is_ctrl_up_and_running (struct aac_dev*) ;
 int aac_send_hardware_soft_reset (struct aac_dev*) ;
 int aac_send_iop_reset (struct aac_dev*) ;
 int aac_src_disable_interrupt ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int src_readl (struct aac_dev*,int ) ;
 int startup_timeout ;

__attribute__((used)) static int aac_src_restart_adapter(struct aac_dev *dev, int bled, u8 reset_type)
{
 bool is_ctrl_up;
 int ret = 0;

 if (bled < 0)
  goto invalid_out;

 if (bled)
  dev_err(&dev->pdev->dev, "adapter kernel panic'd %x.\n", bled);




 if (bled >= 2 && dev->sa_firmware && reset_type & HW_IOP_RESET)
  reset_type &= ~HW_IOP_RESET;

 dev->a_ops.adapter_enable_int = aac_src_disable_interrupt;

 dev_err(&dev->pdev->dev, "Controller reset type is %d\n", reset_type);

 if (reset_type & HW_IOP_RESET) {
  dev_info(&dev->pdev->dev, "Issuing IOP reset\n");
  aac_send_iop_reset(dev);




  is_ctrl_up = aac_is_ctrl_up_and_running(dev);
  if (!is_ctrl_up)
   dev_err(&dev->pdev->dev, "IOP reset failed\n");
  else {
   dev_info(&dev->pdev->dev, "IOP reset succeeded\n");
   goto set_startup;
  }
 }

 if (!dev->sa_firmware) {
  dev_err(&dev->pdev->dev, "ARC Reset attempt failed\n");
  ret = -ENODEV;
  goto out;
 }

 if (reset_type & HW_SOFT_RESET) {
  dev_info(&dev->pdev->dev, "Issuing SOFT reset\n");
  aac_send_hardware_soft_reset(dev);
  dev->msi_enabled = 0;

  is_ctrl_up = aac_is_ctrl_up_and_running(dev);
  if (!is_ctrl_up) {
   dev_err(&dev->pdev->dev, "SOFT reset failed\n");
   ret = -ENODEV;
   goto out;
  } else
   dev_info(&dev->pdev->dev, "SOFT reset succeeded\n");
 }

set_startup:
 if (startup_timeout < 300)
  startup_timeout = 300;

out:
 return ret;

invalid_out:
 if (src_readl(dev, MUnit.OMR) & KERNEL_PANIC)
  ret = -ENODEV;
goto out;
}
