
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int s32 ;
struct TYPE_6__ {int bLCKInProgress; } ;
struct TYPE_7__ {int SupportAbility; int InterfaceIndex; TYPE_1__ RFCalibrateInfo; scalar_t__* pbScanInProcess; } ;
typedef TYPE_2__* PDM_ODM_T ;


 int ODM_COMP_CALIBRATION ;
 int ODM_DBG_LOUD ;
 int ODM_RF_CALIBRATION ;
 int ODM_RT_TRACE (TYPE_2__*,int ,int ,char*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int mdelay (int) ;
 int phy_LCCalibrate_8723B (TYPE_2__*,int) ;

void PHY_LCCalibrate_8723B(PDM_ODM_T pDM_Odm)
{
 bool bSingleTone = 0, bCarrierSuppression = 0;
 u32 timeout = 2000, timecount = 0;
 u32 StartTime;
 s32 ProgressingTime;





 if (!(pDM_Odm->SupportAbility & ODM_RF_CALIBRATION))
  return;


 if (bSingleTone || bCarrierSuppression)
  return;

 StartTime = jiffies;
 while (*(pDM_Odm->pbScanInProcess) && timecount < timeout) {
  mdelay(50);
  timecount += 50;
 }

 pDM_Odm->RFCalibrateInfo.bLCKInProgress = 1;


 phy_LCCalibrate_8723B(pDM_Odm, 0);


 pDM_Odm->RFCalibrateInfo.bLCKInProgress = 0;

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LCK:Finish!!!interface %d\n", pDM_Odm->InterfaceIndex));
 ProgressingTime = jiffies_to_msecs(jiffies - StartTime);
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LCK ProgressingTime = %d\n", ProgressingTime));
}
