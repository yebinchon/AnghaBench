
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bb_reg_def {int rf3wireOffset; } ;
struct adapter {TYPE_1__* HalData; } ;
typedef enum rf_radio_path { ____Placeholder_rf_radio_path } rf_radio_path ;
struct TYPE_2__ {struct bb_reg_def* PHYRegDef; } ;


 int bMaskDWord ;
 int phy_set_bb_reg (struct adapter*,int ,int ,int) ;

__attribute__((used)) static void rf_serial_write(struct adapter *adapt,
       enum rf_radio_path rfpath, u32 offset,
       u32 data)
{
 u32 data_and_addr = 0;
 struct bb_reg_def *phyreg = &adapt->HalData->PHYRegDef[rfpath];

 offset &= 0xff;
 data_and_addr = ((offset<<20) | (data&0x000fffff)) & 0x0fffffff;
 phy_set_bb_reg(adapt, phyreg->rf3wireOffset, bMaskDWord, data_and_addr);
}
