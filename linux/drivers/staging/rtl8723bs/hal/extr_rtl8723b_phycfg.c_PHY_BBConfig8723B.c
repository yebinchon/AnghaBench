
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct hal_com_data {int CrystalCap; } ;
struct adapter {int dummy; } ;


 int BIT0 ;
 int BIT1 ;
 int BIT13 ;
 int FEN_BBRSTB ;
 int FEN_BB_GLB_RSTn ;
 int FEN_DIO_PCIE ;
 int FEN_PCIEA ;
 int FEN_PPLL ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int ODM_RF_PATH_A ;
 int PHY_SetBBReg (struct adapter*,int ,int,int) ;
 int PHY_SetRFReg (struct adapter*,int ,int,int,int) ;
 scalar_t__ REG_AFE_XTAL_CTRL ;
 int REG_MAC_PHY_CTRL ;
 scalar_t__ REG_RF_CTRL ;
 scalar_t__ REG_SYS_FUNC_EN ;
 int RF_EN ;
 int RF_RSTB ;
 int RF_SDMRSTB ;
 int _SUCCESS ;
 int msleep (int) ;
 int phy_BB8723b_Config_ParaFile (struct adapter*) ;
 int phy_InitBBRFRegisterDefinition (struct adapter*) ;
 int rtw_read16 (struct adapter*,scalar_t__) ;
 int rtw_write16 (struct adapter*,scalar_t__,int ) ;
 int rtw_write32 (struct adapter*,int,int) ;
 int rtw_write8 (struct adapter*,scalar_t__,int) ;

int PHY_BBConfig8723B(struct adapter *Adapter)
{
 int rtStatus = _SUCCESS;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 u32 RegVal;
 u8 CrystalCap;

 phy_InitBBRFRegisterDefinition(Adapter);


 RegVal = rtw_read16(Adapter, REG_SYS_FUNC_EN);
 rtw_write16(Adapter, REG_SYS_FUNC_EN, (u16)(RegVal|BIT13|BIT0|BIT1));

 rtw_write32(Adapter, 0x948, 0x280);

 rtw_write8(Adapter, REG_RF_CTRL, RF_EN|RF_RSTB|RF_SDMRSTB);

 msleep(1);

 PHY_SetRFReg(Adapter, ODM_RF_PATH_A, 0x1, 0xfffff, 0x780);

 rtw_write8(Adapter, REG_SYS_FUNC_EN, FEN_PPLL|FEN_PCIEA|FEN_DIO_PCIE|FEN_BB_GLB_RSTn|FEN_BBRSTB);

 rtw_write8(Adapter, REG_AFE_XTAL_CTRL+1, 0x80);




 rtStatus = phy_BB8723b_Config_ParaFile(Adapter);


 CrystalCap = pHalData->CrystalCap & 0x3F;
 PHY_SetBBReg(Adapter, REG_MAC_PHY_CTRL, 0xFFF000, (CrystalCap | (CrystalCap << 6)));

 return rtStatus;
}
