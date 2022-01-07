
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int dummy; } ;


 int ACX_REG_SLV_SOFT_RESET ;
 int ACX_SLV_SOFT_RESET_BIT ;
 int DEBUG_BOOT ;
 int ENABLE ;
 int SOFT_RESET_MAX_TIME ;
 int SOFT_RESET_STALL_TIME ;
 int SPARE_A2 ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int ) ;
 unsigned long usecs_to_jiffies (int ) ;
 int wl1251_debug (int ,char*,int) ;
 int wl1251_error (char*) ;
 int wl1251_reg_read32 (struct wl1251*,int ) ;
 int wl1251_reg_write32 (struct wl1251*,int ,int) ;

int wl1251_boot_soft_reset(struct wl1251 *wl)
{
 unsigned long timeout;
 u32 boot_data;


 wl1251_reg_write32(wl, ACX_REG_SLV_SOFT_RESET, ACX_SLV_SOFT_RESET_BIT);


 timeout = jiffies + usecs_to_jiffies(SOFT_RESET_MAX_TIME);
 while (1) {
  boot_data = wl1251_reg_read32(wl, ACX_REG_SLV_SOFT_RESET);
  wl1251_debug(DEBUG_BOOT, "soft reset bootdata 0x%x", boot_data);
  if ((boot_data & ACX_SLV_SOFT_RESET_BIT) == 0)
   break;

  if (time_after(jiffies, timeout)) {


   wl1251_error("soft reset timeout");
   return -1;
  }

  udelay(SOFT_RESET_STALL_TIME);
 }


 wl1251_reg_write32(wl, ENABLE, 0x0);


 wl1251_reg_write32(wl, SPARE_A2, 0xffff);

 return 0;
}
