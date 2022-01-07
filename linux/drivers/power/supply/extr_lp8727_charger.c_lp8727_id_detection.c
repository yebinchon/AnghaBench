
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8727_platform_data {int * usb; int * ac; } ;
struct lp8727_chg {int devid; int * chg_param; struct lp8727_platform_data* pdata; } ;


 int LP8727_ID_DEDICATED_CHG ;
 int LP8727_ID_NONE ;
 int LP8727_ID_TA ;
 int LP8727_ID_USB_CHG ;
 int LP8727_ID_USB_DS ;
 int LP8727_SW_DM1_DM ;
 int LP8727_SW_DM1_HiZ ;
 int LP8727_SW_DP2_DP ;
 int LP8727_SW_DP2_HiZ ;
 int lp8727_ctrl_switch (struct lp8727_chg*,int) ;
 int lp8727_is_dedicated_charger (struct lp8727_chg*) ;
 int lp8727_is_usb_charger (struct lp8727_chg*) ;

__attribute__((used)) static void lp8727_id_detection(struct lp8727_chg *pchg, u8 id, int vbusin)
{
 struct lp8727_platform_data *pdata = pchg->pdata;
 u8 devid = LP8727_ID_NONE;
 u8 swctrl = LP8727_SW_DM1_HiZ | LP8727_SW_DP2_HiZ;

 switch (id) {
 case 0x5:
  devid = LP8727_ID_TA;
  pchg->chg_param = pdata ? pdata->ac : ((void*)0);
  break;
 case 0xB:
  if (lp8727_is_dedicated_charger(pchg)) {
   pchg->chg_param = pdata ? pdata->ac : ((void*)0);
   devid = LP8727_ID_DEDICATED_CHG;
  } else if (lp8727_is_usb_charger(pchg)) {
   pchg->chg_param = pdata ? pdata->usb : ((void*)0);
   devid = LP8727_ID_USB_CHG;
   swctrl = LP8727_SW_DM1_DM | LP8727_SW_DP2_DP;
  } else if (vbusin) {
   devid = LP8727_ID_USB_DS;
   swctrl = LP8727_SW_DM1_DM | LP8727_SW_DP2_DP;
  }
  break;
 default:
  devid = LP8727_ID_NONE;
  pchg->chg_param = ((void*)0);
  break;
 }

 pchg->devid = devid;
 lp8727_ctrl_switch(pchg, swctrl);
}
