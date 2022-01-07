
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct odm_ra_info {size_t DecisionRate; int NscUp; int NscDown; } ;


 int* N_THRESHOLD_HIGH ;
 int* N_THRESHOLD_LOW ;

__attribute__((used)) static void odm_ResetRaCounter_8188E(struct odm_ra_info *pRaInfo)
{
 u8 RateID;

 RateID = pRaInfo->DecisionRate;
 pRaInfo->NscUp = (N_THRESHOLD_HIGH[RateID] +
     N_THRESHOLD_LOW[RateID]) >> 1;
 pRaInfo->NscDown = (N_THRESHOLD_HIGH[RateID] +
       N_THRESHOLD_LOW[RateID]) >> 1;
}
