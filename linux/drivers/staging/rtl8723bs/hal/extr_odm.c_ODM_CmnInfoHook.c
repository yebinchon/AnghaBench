
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* mp_mode; void* pu1ForcedIgiLb; void* pForcedDataRate; void* pbNet_closed; void* pAntennaTest; void* pinit_adpt_in_progress; void* pbDriverIsGoingToPnpSetPowerSleep; void* pbDriverStopped; void* pOnePathCCA; void* pbPowerSaving; void* pbScanInProcess; void* pbMasterOfDMSP; void* pBuddyAdapter; void* pbGetValueFromOtherMac; void* pChannel; void* pBandWidth; void* pSecurity; void* pSecChOffset; void* pBandType; void* pwirelessmode; void* pNumRxBytesUnicast; void* pNumTxBytesUnicast; void* pMacPhyMode; } ;
typedef TYPE_1__* PDM_ODM_T ;
typedef int ODM_CMNINFO_E ;
void ODM_CmnInfoHook(PDM_ODM_T pDM_Odm, ODM_CMNINFO_E CmnInfo, void *pValue)
{



 switch (CmnInfo) {



 case 139:
  pDM_Odm->pMacPhyMode = pValue;
  break;

 case 129:
  pDM_Odm->pNumTxBytesUnicast = pValue;
  break;

 case 133:
  pDM_Odm->pNumRxBytesUnicast = pValue;
  break;

 case 128:
  pDM_Odm->pwirelessmode = pValue;
  break;

 case 149:
  pDM_Odm->pBandType = pValue;
  break;

 case 131:
  pDM_Odm->pSecChOffset = pValue;
  break;

 case 130:
  pDM_Odm->pSecurity = pValue;
  break;

 case 147:
  pDM_Odm->pBandWidth = pValue;
  break;

 case 146:
  pDM_Odm->pChannel = pValue;
  break;

 case 145:
  pDM_Odm->pbGetValueFromOtherMac = pValue;
  break;

 case 148:
  pDM_Odm->pBuddyAdapter = pValue;
  break;

 case 144:
  pDM_Odm->pbMasterOfDMSP = pValue;
  break;

 case 132:
  pDM_Odm->pbScanInProcess = pValue;
  break;

 case 134:
  pDM_Odm->pbPowerSaving = pValue;
  break;

 case 136:
  pDM_Odm->pOnePathCCA = pValue;
  break;

 case 143:
  pDM_Odm->pbDriverStopped = pValue;
  break;

 case 135:
  pDM_Odm->pbDriverIsGoingToPnpSetPowerSleep = pValue;
  break;

 case 140:
  pDM_Odm->pinit_adpt_in_progress = pValue;
  break;

 case 150:
  pDM_Odm->pAntennaTest = pValue;
  break;

 case 137:
  pDM_Odm->pbNet_closed = pValue;
  break;

 case 141:
  pDM_Odm->pForcedDataRate = pValue;
  break;

 case 142:
  pDM_Odm->pu1ForcedIgiLb = pValue;
  break;

 case 138:
  pDM_Odm->mp_mode = pValue;
  break;
 default:

  break;
 }

}
