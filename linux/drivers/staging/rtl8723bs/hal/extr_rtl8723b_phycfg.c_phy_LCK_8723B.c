
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int PHY_SetRFReg (struct adapter*,int ,int,int ,int) ;
 int RF_CHNLBW ;
 int RF_PATH_A ;
 int bRFRegOffsetMask ;
 int mdelay (int) ;

__attribute__((used)) static void phy_LCK_8723B(struct adapter *Adapter)
{
 PHY_SetRFReg(Adapter, RF_PATH_A, 0xB0, bRFRegOffsetMask, 0xDFBE0);
 PHY_SetRFReg(Adapter, RF_PATH_A, RF_CHNLBW, bRFRegOffsetMask, 0x8C01);
 mdelay(200);
 PHY_SetRFReg(Adapter, RF_PATH_A, 0xB0, bRFRegOffsetMask, 0xDFFE0);
}
