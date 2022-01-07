
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int dummy; } ;


 int ACX_REG_ECPU_CONTROL ;
 int wl1251_reg_read32 (struct wl1251*,int ) ;
 int wl1251_reg_write32 (struct wl1251*,int ,int ) ;

__attribute__((used)) static void wl1251_boot_set_ecpu_ctrl(struct wl1251 *wl, u32 flag)
{
 u32 cpu_ctrl;


 cpu_ctrl = wl1251_reg_read32(wl, ACX_REG_ECPU_CONTROL);


 cpu_ctrl &= ~flag;
 wl1251_reg_write32(wl, ACX_REG_ECPU_CONTROL, cpu_ctrl);
}
