
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1251 {int chip_id; int * fw; TYPE_1__* if_ops; } ;
struct TYPE_2__ {int (* reset ) (struct wl1251*) ;} ;





 int CHIP_ID_B ;
 int DEBUG_BOOT ;
 int ENODEV ;
 int REGISTERS_BASE ;
 int REGISTERS_DOWN_SIZE ;
 int WL1251_POWER_ON_SLEEP ;
 int msleep (int ) ;
 int stub1 (struct wl1251*) ;
 int wl1251_debug (int ,char*,int) ;
 int wl1251_error (char*,int) ;
 int wl1251_fetch_firmware (struct wl1251*) ;
 int wl1251_fw_wakeup (struct wl1251*) ;
 int wl1251_power_on (struct wl1251*) ;
 int wl1251_reg_read32 (struct wl1251*,int ) ;
 int wl1251_set_partition (struct wl1251*,int,int,int ,int ) ;

__attribute__((used)) static int wl1251_chip_wakeup(struct wl1251 *wl)
{
 int ret;

 ret = wl1251_power_on(wl);
 if (ret < 0)
  return ret;

 msleep(WL1251_POWER_ON_SLEEP);
 wl->if_ops->reset(wl);



 wl1251_set_partition(wl,
        0x00000000,
        0x00000000,
        REGISTERS_BASE,
        REGISTERS_DOWN_SIZE);


 wl1251_fw_wakeup(wl);




 wl->chip_id = wl1251_reg_read32(wl, CHIP_ID_B);



 switch (wl->chip_id) {
 case 128:
  wl1251_debug(DEBUG_BOOT, "chip id 0x%x (1251 PG12)",
        wl->chip_id);
  break;
 case 129:
  wl1251_debug(DEBUG_BOOT, "chip id 0x%x (1251 PG11)",
        wl->chip_id);
  break;
 case 130:
 default:
  wl1251_error("unsupported chip id: 0x%x", wl->chip_id);
  ret = -ENODEV;
  goto out;
 }

 if (wl->fw == ((void*)0)) {
  ret = wl1251_fetch_firmware(wl);
  if (ret < 0)
   goto out;
 }

out:
 return ret;
}
