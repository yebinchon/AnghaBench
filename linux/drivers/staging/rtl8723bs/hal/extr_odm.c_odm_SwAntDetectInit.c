
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pSWAT_T ;
struct TYPE_4__ {scalar_t__ SWAS_NoLink_State; void* CurAntenna; void* PreAntenna; int SWAS_NoLink_BK_Reg92c; } ;
struct TYPE_5__ {int Adapter; TYPE_1__ DM_SWAT_Table; } ;
typedef TYPE_2__* PDM_ODM_T ;


 void* MAIN_ANT ;
 int rDPDT_control ;
 int rtw_read32 (int ,int ) ;

void odm_SwAntDetectInit(PDM_ODM_T pDM_Odm)
{
 pSWAT_T pDM_SWAT_Table = &pDM_Odm->DM_SWAT_Table;

 pDM_SWAT_Table->SWAS_NoLink_BK_Reg92c = rtw_read32(pDM_Odm->Adapter, rDPDT_control);
 pDM_SWAT_Table->PreAntenna = MAIN_ANT;
 pDM_SWAT_Table->CurAntenna = MAIN_ANT;
 pDM_SWAT_Table->SWAS_NoLink_State = 0;
}
