
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int online_chg; } ;
struct abx500_chargalg {TYPE_4__* usb_chg; TYPE_2__ chg_info; TYPE_5__* ac_chg; } ;
struct TYPE_7__ {int (* kick_wd ) (TYPE_5__*) ;} ;
struct TYPE_11__ {TYPE_1__ ops; scalar_t__ external; } ;
struct TYPE_9__ {int (* kick_wd ) (TYPE_4__*) ;} ;
struct TYPE_10__ {TYPE_3__ ops; } ;


 int AC_CHG ;
 int ENXIO ;
 int USB_CHG ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_5__*) ;
 int stub3 (TYPE_4__*) ;

__attribute__((used)) static int abx500_chargalg_kick_watchdog(struct abx500_chargalg *di)
{

 if (di->ac_chg && di->ac_chg->ops.kick_wd &&
     di->chg_info.online_chg & AC_CHG) {





  if (di->ac_chg->external &&
      di->usb_chg && di->usb_chg->ops.kick_wd)
   di->usb_chg->ops.kick_wd(di->usb_chg);

  return di->ac_chg->ops.kick_wd(di->ac_chg);
 }
 else if (di->usb_chg && di->usb_chg->ops.kick_wd &&
   di->chg_info.online_chg & USB_CHG)
  return di->usb_chg->ops.kick_wd(di->usb_chg);

 return -ENXIO;
}
