
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {scalar_t__ HighRSSIThresh; scalar_t__ LowRSSIThresh; } ;
struct TYPE_7__ {TYPE_1__ RateAdaptive; } ;
typedef TYPE_1__* PODM_RATE_ADAPTIVE ;
typedef TYPE_2__* PDM_ODM_T ;






 int ODM_COMP_RA_MASK ;
 int ODM_DBG_LOUD ;
 int ODM_RT_ASSERT (TYPE_2__*,int,char*) ;
 int ODM_RT_TRACE (TYPE_2__*,int ,int ,char*) ;

bool ODM_RAStateCheck(
 PDM_ODM_T pDM_Odm,
 s32 RSSI,
 bool bForceUpdate,
 u8 *pRATRState
)
{
 PODM_RATE_ADAPTIVE pRA = &pDM_Odm->RateAdaptive;
 const u8 GoUpGap = 5;
 u8 HighRSSIThreshForRA = pRA->HighRSSIThresh;
 u8 LowRSSIThreshForRA = pRA->LowRSSIThresh;
 u8 RATRState;




 switch (*pRATRState) {
 case 130:
 case 131:
  break;

 case 128:
  HighRSSIThreshForRA += GoUpGap;
  break;

 case 129:
  HighRSSIThreshForRA += GoUpGap;
  LowRSSIThreshForRA += GoUpGap;
  break;

 default:
  ODM_RT_ASSERT(pDM_Odm, 0, ("wrong rssi level setting %d !", *pRATRState));
  break;
 }


 if (RSSI > HighRSSIThreshForRA)
  RATRState = 131;
 else if (RSSI > LowRSSIThreshForRA)
  RATRState = 128;
 else
  RATRState = 129;


 if (*pRATRState != RATRState || bForceUpdate) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("RSSI Level %d -> %d\n", *pRATRState, RATRState));
  *pRATRState = RATRState;
  return 1;
 }

 return 0;
}
