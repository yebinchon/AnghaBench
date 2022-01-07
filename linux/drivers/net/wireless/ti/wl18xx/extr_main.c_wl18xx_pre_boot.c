
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int * ptable; } ;


 size_t PART_BOOT ;
 int REG_INTERRUPT_MASK ;
 int WELP_ARM_COMMAND_VAL ;
 int WL1271_ACX_INTR_ALL ;
 int WL18XX_WELP_ARM_COMMAND ;
 int udelay (int) ;
 int wl18xx_boot_soft_reset (struct wl1271*) ;
 int wl18xx_set_clk (struct wl1271*) ;
 int wlcore_set_partition (struct wl1271*,int *) ;
 int wlcore_write32 (struct wl1271*,int ,int ) ;
 int wlcore_write_reg (struct wl1271*,int ,int ) ;

__attribute__((used)) static int wl18xx_pre_boot(struct wl1271 *wl)
{
 int ret;

 ret = wl18xx_set_clk(wl);
 if (ret < 0)
  goto out;


 ret = wlcore_write32(wl, WL18XX_WELP_ARM_COMMAND, WELP_ARM_COMMAND_VAL);
 if (ret < 0)
  goto out;

 udelay(500);

 ret = wlcore_set_partition(wl, &wl->ptable[PART_BOOT]);
 if (ret < 0)
  goto out;


 ret = wlcore_write_reg(wl, REG_INTERRUPT_MASK, WL1271_ACX_INTR_ALL);
 if (ret < 0)
  goto out;

 ret = wl18xx_boot_soft_reset(wl);

out:
 return ret;
}
