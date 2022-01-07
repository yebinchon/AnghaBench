
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct adapter {int dummy; } ;
struct TYPE_4__ {int TM_Trigger; } ;
struct TYPE_5__ {int SupportAbility; TYPE_1__ RFCalibrateInfo; struct adapter* Adapter; } ;
typedef TYPE_2__* PDM_ODM_T ;


 int BIT16 ;
 int BIT17 ;
 int ODM_RF_PATH_A ;
 int ODM_RF_TX_PWR_TRACK ;
 int ODM_TXPowerTrackingCallback_ThermalMeter (struct adapter*) ;
 int PHY_SetRFReg (struct adapter*,int ,int ,int,int) ;
 int RF_T_METER_NEW ;

void ODM_TXPowerTrackingCheck(PDM_ODM_T pDM_Odm)
{
 struct adapter *Adapter = pDM_Odm->Adapter;

 if (!(pDM_Odm->SupportAbility & ODM_RF_TX_PWR_TRACK))
  return;

 if (!pDM_Odm->RFCalibrateInfo.TM_Trigger) {
  PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_T_METER_NEW, (BIT17 | BIT16), 0x03);



  pDM_Odm->RFCalibrateInfo.TM_Trigger = 1;
  return;
 } else {

  ODM_TXPowerTrackingCallback_ThermalMeter(Adapter);
  pDM_Odm->RFCalibrateInfo.TM_Trigger = 0;
 }
}
