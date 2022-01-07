
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bTXPowerTracking; int TxPowerTrackControl; scalar_t__ TXPowercount; } ;
struct odm_dm_struct {int* mp_mode; TYPE_1__ RFCalibrateInfo; } ;


 int MSG_88E (char*,int) ;

void odm_TXPowerTrackingInit(struct odm_dm_struct *pDM_Odm)
{
 pDM_Odm->RFCalibrateInfo.bTXPowerTracking = 1;
 pDM_Odm->RFCalibrateInfo.TXPowercount = 0;
 if (*(pDM_Odm->mp_mode) != 1)
  pDM_Odm->RFCalibrateInfo.TxPowerTrackControl = 1;
 MSG_88E("pDM_Odm TxPowerTrackControl = %d\n", pDM_Odm->RFCalibrateInfo.TxPowerTrackControl);

 pDM_Odm->RFCalibrateInfo.TxPowerTrackControl = 1;
}
