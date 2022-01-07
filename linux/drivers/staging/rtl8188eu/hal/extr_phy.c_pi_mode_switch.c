
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int bMaskDWord ;
 int phy_set_bb_reg (struct adapter*,int ,int ,int) ;
 int rFPGA0_XA_HSSIParameter1 ;
 int rFPGA0_XB_HSSIParameter1 ;

__attribute__((used)) static void pi_mode_switch(struct adapter *adapt, bool pi_mode)
{
 u32 mode;

 mode = pi_mode ? 0x01000100 : 0x01000000;
 phy_set_bb_reg(adapt, rFPGA0_XA_HSSIParameter1, bMaskDWord, mode);
 phy_set_bb_reg(adapt, rFPGA0_XB_HSSIParameter1, bMaskDWord, mode);
}
