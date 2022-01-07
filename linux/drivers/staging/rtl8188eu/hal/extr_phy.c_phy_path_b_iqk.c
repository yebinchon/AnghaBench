
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct odm_dm_struct {int dummy; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {struct odm_dm_struct odmpriv; } ;


 int BIT (int) ;
 int IQK_DELAY_TIME_88E ;
 int ODM_COMP_CALIBRATION ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;
 int bMaskDWord ;
 int mdelay (int ) ;
 int phy_query_bb_reg (struct adapter*,int ,int ) ;
 int phy_set_bb_reg (struct adapter*,int ,int ,int) ;
 int rIQK_AGC_Cont ;
 int rRx_Power_After_IQK_A_2 ;
 int rRx_Power_After_IQK_B_2 ;
 int rRx_Power_Before_IQK_B_2 ;
 int rTx_Power_After_IQK_B ;
 int rTx_Power_Before_IQK_B ;

__attribute__((used)) static u8 phy_path_b_iqk(struct adapter *adapt)
{
 u32 regeac, regeb4, regebc, regec4, regecc;
 u8 result = 0x00;
 struct odm_dm_struct *dm_odm = &adapt->HalData->odmpriv;


 phy_set_bb_reg(adapt, rIQK_AGC_Cont, bMaskDWord, 0x00000002);
 phy_set_bb_reg(adapt, rIQK_AGC_Cont, bMaskDWord, 0x00000000);

 mdelay(IQK_DELAY_TIME_88E);

 regeac = phy_query_bb_reg(adapt, rRx_Power_After_IQK_A_2, bMaskDWord);
 regeb4 = phy_query_bb_reg(adapt, rTx_Power_Before_IQK_B, bMaskDWord);
 regebc = phy_query_bb_reg(adapt, rTx_Power_After_IQK_B, bMaskDWord);
 regec4 = phy_query_bb_reg(adapt, rRx_Power_Before_IQK_B_2, bMaskDWord);
 regecc = phy_query_bb_reg(adapt, rRx_Power_After_IQK_B_2, bMaskDWord);

 if (!(regeac & BIT(31)) &&
     (((regeb4 & 0x03FF0000)>>16) != 0x142) &&
     (((regebc & 0x03FF0000)>>16) != 0x42))
  result |= 0x01;
 else
  return result;

 if (!(regeac & BIT(30)) &&
     (((regec4 & 0x03FF0000)>>16) != 0x132) &&
     (((regecc & 0x03FF0000)>>16) != 0x36))
  result |= 0x02;
 else
  ODM_RT_TRACE(dm_odm, ODM_COMP_CALIBRATION,
        ODM_DBG_LOUD, ("Path B Rx IQK fail!!\n"));
 return result;
}
