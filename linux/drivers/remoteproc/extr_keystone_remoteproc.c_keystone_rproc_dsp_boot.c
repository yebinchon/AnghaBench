
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct keystone_rproc {int reset; int dev; int boot_offset; int dev_ctrl; } ;


 int EINVAL ;
 int SZ_1K ;
 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int ,int) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int keystone_rproc_dsp_boot(struct keystone_rproc *ksproc, u32 boot_addr)
{
 int ret;

 if (boot_addr & (SZ_1K - 1)) {
  dev_err(ksproc->dev, "invalid boot address 0x%x, must be aligned on a 1KB boundary\n",
   boot_addr);
  return -EINVAL;
 }

 ret = regmap_write(ksproc->dev_ctrl, ksproc->boot_offset, boot_addr);
 if (ret) {
  dev_err(ksproc->dev, "regmap_write of boot address failed, status = %d\n",
   ret);
  return ret;
 }

 reset_control_deassert(ksproc->reset);

 return 0;
}
