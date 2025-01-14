
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct bb_reg_def {int rfLSSIReadBack; int rfLSSIReadBackPi; int rfHSSIPara2; } ;
struct adapter {TYPE_1__* HalData; } ;
typedef enum rf_radio_path { ____Placeholder_rf_radio_path } rf_radio_path ;
struct TYPE_2__ {struct bb_reg_def* PHYRegDef; } ;


 int BIT (int) ;
 int RF_PATH_A ;
 int RF_PATH_B ;
 int bLSSIReadAddress ;
 int bLSSIReadBackData ;
 int bLSSIReadEdge ;
 int bMaskDWord ;
 int phy_query_bb_reg (struct adapter*,int ,int ) ;
 int phy_set_bb_reg (struct adapter*,int ,int ,int) ;
 int rFPGA0_XA_HSSIParameter1 ;
 int rFPGA0_XA_HSSIParameter2 ;
 int rFPGA0_XB_HSSIParameter1 ;
 int udelay (int) ;

__attribute__((used)) static u32 rf_serial_read(struct adapter *adapt,
   enum rf_radio_path rfpath, u32 offset)
{
 u32 ret = 0;
 struct bb_reg_def *phyreg = &adapt->HalData->PHYRegDef[rfpath];
 u32 tmplong, tmplong2;
 u8 rfpi_enable = 0;

 offset &= 0xff;

 tmplong = phy_query_bb_reg(adapt, rFPGA0_XA_HSSIParameter2, bMaskDWord);
 if (rfpath == RF_PATH_A)
  tmplong2 = tmplong;
 else
  tmplong2 = phy_query_bb_reg(adapt, phyreg->rfHSSIPara2,
         bMaskDWord);

 tmplong2 = (tmplong2 & (~bLSSIReadAddress)) |
     (offset<<23) | bLSSIReadEdge;

 phy_set_bb_reg(adapt, rFPGA0_XA_HSSIParameter2, bMaskDWord,
         tmplong&(~bLSSIReadEdge));
 udelay(10);

 phy_set_bb_reg(adapt, phyreg->rfHSSIPara2, bMaskDWord, tmplong2);
 udelay(100);

 udelay(10);

 if (rfpath == RF_PATH_A)
  rfpi_enable = (u8)phy_query_bb_reg(adapt, rFPGA0_XA_HSSIParameter1, BIT(8));
 else if (rfpath == RF_PATH_B)
  rfpi_enable = (u8)phy_query_bb_reg(adapt, rFPGA0_XB_HSSIParameter1, BIT(8));

 if (rfpi_enable)
  ret = phy_query_bb_reg(adapt, phyreg->rfLSSIReadBackPi,
           bLSSIReadBackData);
 else
  ret = phy_query_bb_reg(adapt, phyreg->rfLSSIReadBack,
           bLSSIReadBackData);
 return ret;
}
