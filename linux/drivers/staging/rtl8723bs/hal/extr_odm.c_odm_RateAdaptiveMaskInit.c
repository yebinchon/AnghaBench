
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Type; int LdpcThres; int bUseLdpc; int HighRSSIThresh; int LowRSSIThresh; int RATRState; } ;
struct TYPE_5__ {int bUseRAMask; TYPE_1__ RateAdaptive; } ;
typedef TYPE_1__* PODM_RATE_ADAPTIVE ;
typedef TYPE_2__* PDM_ODM_T ;


 int DM_RATR_STA_INIT ;
 scalar_t__ DM_Type_ByDriver ;

void odm_RateAdaptiveMaskInit(PDM_ODM_T pDM_Odm)
{
 PODM_RATE_ADAPTIVE pOdmRA = &pDM_Odm->RateAdaptive;

 pOdmRA->Type = DM_Type_ByDriver;
 if (pOdmRA->Type == DM_Type_ByDriver)
  pDM_Odm->bUseRAMask = 1;
 else
  pDM_Odm->bUseRAMask = 0;

 pOdmRA->RATRState = DM_RATR_STA_INIT;
 pOdmRA->LdpcThres = 35;
 pOdmRA->bUseLdpc = 0;
 pOdmRA->HighRSSIThresh = 50;
 pOdmRA->LowRSSIThresh = 20;
}
