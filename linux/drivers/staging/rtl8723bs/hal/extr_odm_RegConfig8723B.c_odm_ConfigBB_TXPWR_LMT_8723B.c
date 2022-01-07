
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int PHY_SetTxPowerLimit (int ,int *,int *,int *,int *,int *,int *,int *) ;

void odm_ConfigBB_TXPWR_LMT_8723B(
 PDM_ODM_T pDM_Odm,
 u8 *Regulation,
 u8 *Band,
 u8 *Bandwidth,
 u8 *RateSection,
 u8 *RfPath,
 u8 *Channel,
 u8 *PowerLimit
)
{
 PHY_SetTxPowerLimit(
  pDM_Odm->Adapter,
  Regulation,
  Band,
  Bandwidth,
  RateSection,
  RfPath,
  Channel,
  PowerLimit
 );
}
