
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int charger_type; } ;
struct abx500_chargalg {int dev; TYPE_1__ chg_info; } ;




 int abx500_chargalg_ac_en (struct abx500_chargalg*,int,int,int) ;
 int abx500_chargalg_usb_en (struct abx500_chargalg*,int,int,int) ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void abx500_chargalg_start_charging(struct abx500_chargalg *di,
 int vset, int iset)
{
 switch (di->chg_info.charger_type) {
 case 129:
  dev_dbg(di->dev,
   "AC parameters: Vset %d, Ich %d\n", vset, iset);
  abx500_chargalg_usb_en(di, 0, 0, 0);
  abx500_chargalg_ac_en(di, 1, vset, iset);
  break;

 case 128:
  dev_dbg(di->dev,
   "USB parameters: Vset %d, Ich %d\n", vset, iset);
  abx500_chargalg_ac_en(di, 0, 0, 0);
  abx500_chargalg_usb_en(di, 1, vset, iset);
  break;

 default:
  dev_err(di->dev, "Unknown charger to charge from\n");
  break;
 }
}
