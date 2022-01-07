
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int BIT10 ;
 int BIT7 ;
 int BIT8 ;
 int BIT9 ;
 scalar_t__ ODM_REG_FPGA0_IQK_11N ;
 int ODM_REG_NHM_TH3_TO_TH0_11N ;
 int ODM_REG_NHM_TH7_TO_TH4_11N ;
 scalar_t__ ODM_REG_NHM_TH9_TH10_11N ;
 scalar_t__ ODM_REG_NHM_TIMER_11N ;
 scalar_t__ ODM_REG_OFDM_FA_RSTC_11N ;
 int PHY_SetBBReg (int ,scalar_t__,int,int) ;
 int bMaskByte0 ;
 int rtw_write16 (int ,scalar_t__,int) ;
 int rtw_write32 (int ,int ,int) ;

void odm_NHMCounterStatisticsInit(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;


 rtw_write16(pDM_Odm->Adapter, ODM_REG_NHM_TIMER_11N+2, 0x2710);

 rtw_write16(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N+2, 0xffff);

 rtw_write32(pDM_Odm->Adapter, ODM_REG_NHM_TH3_TO_TH0_11N, 0xffffff52);
 rtw_write32(pDM_Odm->Adapter, ODM_REG_NHM_TH7_TO_TH4_11N, 0xffffffff);
 PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_FPGA0_IQK_11N, bMaskByte0, 0xff);
 PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_NHM_TH9_TH10_11N, BIT10|BIT9|BIT8, 0x7);
 PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_OFDM_FA_RSTC_11N, BIT7, 0x1);
}
