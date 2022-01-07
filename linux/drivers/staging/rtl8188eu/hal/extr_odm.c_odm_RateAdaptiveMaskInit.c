
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_rate_adapt {scalar_t__ Type; int HighRSSIThresh; int LowRSSIThresh; int RATRState; } ;
struct odm_dm_struct {int bUseRAMask; struct odm_rate_adapt RateAdaptive; } ;


 int DM_RATR_STA_INIT ;
 scalar_t__ DM_Type_ByDriver ;

void odm_RateAdaptiveMaskInit(struct odm_dm_struct *pDM_Odm)
{
 struct odm_rate_adapt *pOdmRA = &pDM_Odm->RateAdaptive;

 pOdmRA->Type = DM_Type_ByDriver;
 if (pOdmRA->Type == DM_Type_ByDriver)
  pDM_Odm->bUseRAMask = 1;
 else
  pDM_Odm->bUseRAMask = 0;

 pOdmRA->RATRState = DM_RATR_STA_INIT;
 pOdmRA->HighRSSIThresh = 50;
 pOdmRA->LowRSSIThresh = 20;
}
