
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {int CrystalCap; } ;


 int BIT (int) ;
 int FEN_BBRSTB ;
 int FEN_BB_GLB_RSTn ;
 int FEN_USBA ;
 int FEN_USBD ;
 int REG_AFE_XTAL_CTRL ;
 int REG_RF_CTRL ;
 int REG_SYS_FUNC_EN ;
 int RF_EN ;
 int RF_RSTB ;
 int RF_SDMRSTB ;
 int config_parafile (struct adapter*) ;
 int phy_set_bb_reg (struct adapter*,int ,int,int) ;
 int rtl88e_phy_init_bb_rf_register_definition (struct adapter*) ;
 int usb_read16 (struct adapter*,int ) ;
 int usb_write16 (struct adapter*,int ,int ) ;
 int usb_write8 (struct adapter*,int ,int) ;

bool rtl88eu_phy_bb_config(struct adapter *adapt)
{
 bool rtstatus;
 u32 regval;
 u8 crystal_cap;

 rtl88e_phy_init_bb_rf_register_definition(adapt);


 regval = usb_read16(adapt, REG_SYS_FUNC_EN);
 usb_write16(adapt, REG_SYS_FUNC_EN,
      (u16)(regval | BIT(13) | BIT(0) | BIT(1)));

 usb_write8(adapt, REG_RF_CTRL, RF_EN | RF_RSTB | RF_SDMRSTB);

 usb_write8(adapt, REG_SYS_FUNC_EN, FEN_USBA |
     FEN_USBD | FEN_BB_GLB_RSTn | FEN_BBRSTB);


 rtstatus = config_parafile(adapt);


 crystal_cap = adapt->HalData->CrystalCap & 0x3F;
 phy_set_bb_reg(adapt, REG_AFE_XTAL_CTRL, 0x7ff800,
         (crystal_cap | (crystal_cap << 6)));

 return rtstatus;
}
