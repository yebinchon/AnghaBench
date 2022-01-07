
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int bCCKEn ;
 int bOFDMEn ;
 int phy_set_bb_reg (struct adapter*,int ,int ,int) ;
 int rFPGA0_RFMOD ;

__attribute__((used)) static void _BBTurnOnBlock(struct adapter *Adapter)
{
 phy_set_bb_reg(Adapter, rFPGA0_RFMOD, bCCKEn, 0x1);
 phy_set_bb_reg(Adapter, rFPGA0_RFMOD, bOFDMEn, 0x1);
}
