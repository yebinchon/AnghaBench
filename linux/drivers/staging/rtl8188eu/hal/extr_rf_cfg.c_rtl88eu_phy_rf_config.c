
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hal_data_8188e {struct bb_reg_def* PHYRegDef; } ;
struct bb_reg_def {int rfintfs; int rfHSSIPara2; int rfintfo; int rfintfe; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int B3WIREADDREAALENGTH ;
 int B3WIREDATALENGTH ;
 int BRFSI_RFENV ;
 size_t RF90_PATH_A ;
 int phy_query_bb_reg (struct adapter*,int ,int) ;
 int phy_set_bb_reg (struct adapter*,int ,int,int) ;
 int rtl88e_phy_config_rf_with_headerfile (struct adapter*) ;
 int udelay (int) ;

bool rtl88eu_phy_rf_config(struct adapter *adapt)
{
 struct hal_data_8188e *hal_data = adapt->HalData;
 u32 u4val = 0;
 bool rtstatus;
 struct bb_reg_def *pphyreg;

 pphyreg = &hal_data->PHYRegDef[RF90_PATH_A];
 u4val = phy_query_bb_reg(adapt, pphyreg->rfintfs, BRFSI_RFENV);

 phy_set_bb_reg(adapt, pphyreg->rfintfe, BRFSI_RFENV << 16, 0x1);
 udelay(1);

 phy_set_bb_reg(adapt, pphyreg->rfintfo, BRFSI_RFENV, 0x1);
 udelay(1);

 phy_set_bb_reg(adapt, pphyreg->rfHSSIPara2, B3WIREADDREAALENGTH, 0x0);
 udelay(1);

 phy_set_bb_reg(adapt, pphyreg->rfHSSIPara2, B3WIREDATALENGTH, 0x0);
 udelay(1);

 rtstatus = rtl88e_phy_config_rf_with_headerfile(adapt);

 phy_set_bb_reg(adapt, pphyreg->rfintfs, BRFSI_RFENV, u4val);

 return rtstatus;
}
