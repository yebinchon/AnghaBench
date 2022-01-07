
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ usb_volt; int usb_chg_ok; scalar_t__ ac_volt; int ac_chg_ok; } ;
struct abx500_chargalg {TYPE_3__ chg_info; TYPE_2__* bm; } ;
struct TYPE_5__ {TYPE_1__* chg_params; } ;
struct TYPE_4__ {scalar_t__ usb_volt_max; scalar_t__ ac_volt_max; } ;



__attribute__((used)) static void abx500_chargalg_check_charger_voltage(struct abx500_chargalg *di)
{
 if (di->chg_info.usb_volt > di->bm->chg_params->usb_volt_max)
  di->chg_info.usb_chg_ok = 0;
 else
  di->chg_info.usb_chg_ok = 1;

 if (di->chg_info.ac_volt > di->bm->chg_params->ac_volt_max)
  di->chg_info.ac_chg_ok = 0;
 else
  di->chg_info.ac_chg_ok = 1;

}
