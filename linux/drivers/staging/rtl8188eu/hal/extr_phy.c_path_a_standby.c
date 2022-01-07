
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int bMaskDWord ;
 int phy_set_bb_reg (struct adapter*,int,int ,int) ;
 int rFPGA0_IQK ;

__attribute__((used)) static void path_a_standby(struct adapter *adapt)
{
 phy_set_bb_reg(adapt, rFPGA0_IQK, bMaskDWord, 0x0);
 phy_set_bb_reg(adapt, 0x840, bMaskDWord, 0x00010000);
 phy_set_bb_reg(adapt, rFPGA0_IQK, bMaskDWord, 0x80800000);
}
