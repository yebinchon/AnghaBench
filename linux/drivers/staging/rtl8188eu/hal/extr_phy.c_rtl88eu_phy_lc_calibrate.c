
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int bLCKInProgress; } ;
struct odm_dm_struct {int SupportAbility; TYPE_1__ RFCalibrateInfo; scalar_t__* pbScanInProcess; } ;
struct adapter {TYPE_2__* HalData; } ;
struct TYPE_4__ {struct odm_dm_struct odmpriv; } ;


 int ODM_RF_CALIBRATION ;
 int mdelay (int) ;
 int phy_lc_calibrate (struct adapter*,int) ;

void rtl88eu_phy_lc_calibrate(struct adapter *adapt)
{
 bool singletone = 0, carrier_sup = 0;
 u32 timeout = 2000, timecount = 0;
 struct odm_dm_struct *dm_odm = &adapt->HalData->odmpriv;

 if (!(dm_odm->SupportAbility & ODM_RF_CALIBRATION))
  return;
 if (singletone || carrier_sup)
  return;

 while (*(dm_odm->pbScanInProcess) && timecount < timeout) {
  mdelay(50);
  timecount += 50;
 }

 dm_odm->RFCalibrateInfo.bLCKInProgress = 1;

 phy_lc_calibrate(adapt, 0);

 dm_odm->RFCalibrateInfo.bLCKInProgress = 0;
}
