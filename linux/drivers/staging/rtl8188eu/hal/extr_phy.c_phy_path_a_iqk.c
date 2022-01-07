
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int BIT (int) ;
 int IQK_DELAY_TIME_88E ;
 int bMaskDWord ;
 int mdelay (int ) ;
 int phy_query_bb_reg (struct adapter*,int ,int ) ;
 int phy_set_bb_reg (struct adapter*,int ,int ,int) ;
 int rIQK_AGC_Pts ;
 int rIQK_AGC_Rsp ;
 int rRx_IQK_PI_A ;
 int rRx_IQK_Tone_A ;
 int rRx_Power_After_IQK_A_2 ;
 int rTx_IQK_PI_A ;
 int rTx_IQK_Tone_A ;
 int rTx_Power_After_IQK_A ;
 int rTx_Power_Before_IQK_A ;

__attribute__((used)) static u8 phy_path_a_iqk(struct adapter *adapt, bool config_pathb)
{
 u32 reg_eac, reg_e94, reg_e9c;
 u8 result = 0x00;



 phy_set_bb_reg(adapt, rTx_IQK_Tone_A, bMaskDWord, 0x10008c1c);
 phy_set_bb_reg(adapt, rRx_IQK_Tone_A, bMaskDWord, 0x30008c1c);
 phy_set_bb_reg(adapt, rTx_IQK_PI_A, bMaskDWord, 0x8214032a);
 phy_set_bb_reg(adapt, rRx_IQK_PI_A, bMaskDWord, 0x28160000);


 phy_set_bb_reg(adapt, rIQK_AGC_Rsp, bMaskDWord, 0x00462911);


 phy_set_bb_reg(adapt, rIQK_AGC_Pts, bMaskDWord, 0xf9000000);
 phy_set_bb_reg(adapt, rIQK_AGC_Pts, bMaskDWord, 0xf8000000);

 mdelay(IQK_DELAY_TIME_88E);

 reg_eac = phy_query_bb_reg(adapt, rRx_Power_After_IQK_A_2, bMaskDWord);
 reg_e94 = phy_query_bb_reg(adapt, rTx_Power_Before_IQK_A, bMaskDWord);
 reg_e9c = phy_query_bb_reg(adapt, rTx_Power_After_IQK_A, bMaskDWord);

 if (!(reg_eac & BIT(28)) &&
     (((reg_e94 & 0x03FF0000)>>16) != 0x142) &&
     (((reg_e9c & 0x03FF0000)>>16) != 0x42))
  result |= 0x01;
 return result;
}
