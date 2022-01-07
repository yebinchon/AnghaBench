
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlme_ext_info {int bcn_interval; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int BIT (int) ;
 int REG_ATIMWND ;
 int REG_BCN_CTRL ;
 int REG_BCN_INTERVAL ;
 int REG_RXTSF_OFFSET_CCK ;
 int REG_RXTSF_OFFSET_OFDM ;
 int REG_SLOT ;
 int REG_TCR ;
 int ResumeTxBeacon (struct adapter*) ;
 int TSFRST ;
 int _BeaconFunctionEnable (struct adapter*,int,int) ;
 int _InitBeaconParameters (struct adapter*) ;
 int usb_read32 (struct adapter*,int ) ;
 int usb_read8 (struct adapter*,int ) ;
 int usb_write16 (struct adapter*,int ,int ) ;
 int usb_write32 (struct adapter*,int ,int ) ;
 int usb_write8 (struct adapter*,int ,int) ;

void beacon_timing_control(struct adapter *adapt)
{
 u32 value32;
 struct mlme_ext_priv *pmlmeext = &adapt->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 u32 bcn_ctrl_reg = REG_BCN_CTRL;



 usb_write16(adapt, REG_BCN_INTERVAL, pmlmeinfo->bcn_interval);
 usb_write8(adapt, REG_ATIMWND, 0x02);

 _InitBeaconParameters(adapt);

 usb_write8(adapt, REG_SLOT, 0x09);

 value32 = usb_read32(adapt, REG_TCR);
 value32 &= ~TSFRST;
 usb_write32(adapt, REG_TCR, value32);

 value32 |= TSFRST;
 usb_write32(adapt, REG_TCR, value32);


 usb_write8(adapt, REG_RXTSF_OFFSET_CCK, 0x50);
 usb_write8(adapt, REG_RXTSF_OFFSET_OFDM, 0x50);

 _BeaconFunctionEnable(adapt, 1, 1);

 ResumeTxBeacon(adapt);

 usb_write8(adapt, bcn_ctrl_reg, usb_read8(adapt, bcn_ctrl_reg) | BIT(1));
}
