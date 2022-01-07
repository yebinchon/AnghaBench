
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int TM_Trigger; } ;
struct odm_dm_struct {int SupportAbility; TYPE_1__ RFCalibrateInfo; struct adapter* Adapter; } ;
struct adapter {int dummy; } ;


 int BIT (int) ;
 int ODM_RF_TX_PWR_TRACK ;
 int RF_PATH_A ;
 int RF_T_METER_88E ;
 int phy_set_rf_reg (struct adapter*,int ,int ,int,int) ;
 int rtl88eu_dm_txpower_tracking_callback_thermalmeter (struct adapter*) ;

void ODM_TXPowerTrackingCheck(struct odm_dm_struct *pDM_Odm)
{



 struct adapter *Adapter = pDM_Odm->Adapter;

 if (!(pDM_Odm->SupportAbility & ODM_RF_TX_PWR_TRACK))
  return;

 if (!pDM_Odm->RFCalibrateInfo.TM_Trigger) {
  phy_set_rf_reg(Adapter, RF_PATH_A, RF_T_METER_88E, BIT(17) | BIT(16), 0x03);

  pDM_Odm->RFCalibrateInfo.TM_Trigger = 1;
  return;
 } else {
  rtl88eu_dm_txpower_tracking_callback_thermalmeter(Adapter);
  pDM_Odm->RFCalibrateInfo.TM_Trigger = 0;
 }
}
