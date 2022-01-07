
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_phy {TYPE_1__* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int rf_rbpi; int rf_rb; int rftx_afe; int rftxiq_imbal; int rfrx_afe; int rfrxiq_imbal; int rfagc_control2; int rfagc_control1; void* rfsw_ctrl; int rfhssi_para2; int rfhssi_para1; void* rftxgain_stage; void* rflssi_select; int rf3wire_offset; void* rfintfe; void* rfintfo; void* rfintfi; void* rfintfs; } ;


 size_t RF90_PATH_A ;
 size_t RF90_PATH_B ;
 size_t RF90_PATH_C ;
 size_t RF90_PATH_D ;
 void* RFPGA0_TXGAINSTAGE ;
 void* RFPGA0_XAB_RFINTERFACERB ;
 void* RFPGA0_XAB_RFINTERFACESW ;
 void* RFPGA0_XAB_RFPARAMETER ;
 void* RFPGA0_XAB_SWITCHCONTROL ;
 int RFPGA0_XA_HSSIPARAMETER1 ;
 int RFPGA0_XA_HSSIPARAMETER2 ;
 int RFPGA0_XA_LSSIPARAMETER ;
 int RFPGA0_XA_LSSIREADBACK ;
 void* RFPGA0_XA_RFINTERFACEOE ;
 int RFPGA0_XB_HSSIPARAMETER1 ;
 int RFPGA0_XB_HSSIPARAMETER2 ;
 int RFPGA0_XB_LSSIPARAMETER ;
 int RFPGA0_XB_LSSIREADBACK ;
 void* RFPGA0_XB_RFINTERFACEOE ;
 void* RFPGA0_XCD_RFINTERFACERB ;
 void* RFPGA0_XCD_RFINTERFACESW ;
 void* RFPGA0_XCD_RFPARAMETER ;
 void* RFPGA0_XCD_SWITCHCONTROL ;
 int RFPGA0_XC_LSSIREADBACK ;
 int RFPGA0_XD_LSSIREADBACK ;
 int ROFDM0_XAAGCCORE1 ;
 int ROFDM0_XAAGCCORE2 ;
 int ROFDM0_XARXAFE ;
 int ROFDM0_XARXIQIMBALANCE ;
 int ROFDM0_XATXAFE ;
 int ROFDM0_XATXIQIMBALANCE ;
 int ROFDM0_XBAGCCORE1 ;
 int ROFDM0_XBAGCCORE2 ;
 int ROFDM0_XBRXAFE ;
 int ROFDM0_XBRXIQIMBALANCE ;
 int ROFDM0_XBTXAFE ;
 int ROFDM0_XBTXIQIMBALANCE ;
 int ROFDM0_XCAGCCORE1 ;
 int ROFDM0_XCAGCCORE2 ;
 int ROFDM0_XCRXAFE ;
 int ROFDM0_XCRXIQIMBANLANCE ;
 int ROFDM0_XCTXAFE ;
 int ROFDM0_XCTXIQIMBALANCE ;
 int ROFDM0_XDAGCCORE1 ;
 int ROFDM0_XDAGCCORE2 ;
 int ROFDM0_XDRXAFE ;
 int ROFDM0_XDRXIQIMBALANCE ;
 int ROFDM0_XDTXAFE ;
 int ROFDM0_XDTXIQIMBALANCE ;
 int TRANSCEIVEA_HSPI_READBACK ;
 int TRANSCEIVEB_HSPI_READBACK ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void _rtl92c_phy_init_bb_rf_register_definition(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);

 rtlphy->phyreg_def[RF90_PATH_A].rfintfs = RFPGA0_XAB_RFINTERFACESW;
 rtlphy->phyreg_def[RF90_PATH_B].rfintfs = RFPGA0_XAB_RFINTERFACESW;
 rtlphy->phyreg_def[RF90_PATH_C].rfintfs = RFPGA0_XCD_RFINTERFACESW;
 rtlphy->phyreg_def[RF90_PATH_D].rfintfs = RFPGA0_XCD_RFINTERFACESW;

 rtlphy->phyreg_def[RF90_PATH_A].rfintfi = RFPGA0_XAB_RFINTERFACERB;
 rtlphy->phyreg_def[RF90_PATH_B].rfintfi = RFPGA0_XAB_RFINTERFACERB;
 rtlphy->phyreg_def[RF90_PATH_C].rfintfi = RFPGA0_XCD_RFINTERFACERB;
 rtlphy->phyreg_def[RF90_PATH_D].rfintfi = RFPGA0_XCD_RFINTERFACERB;

 rtlphy->phyreg_def[RF90_PATH_A].rfintfo = RFPGA0_XA_RFINTERFACEOE;
 rtlphy->phyreg_def[RF90_PATH_B].rfintfo = RFPGA0_XB_RFINTERFACEOE;

 rtlphy->phyreg_def[RF90_PATH_A].rfintfe = RFPGA0_XA_RFINTERFACEOE;
 rtlphy->phyreg_def[RF90_PATH_B].rfintfe = RFPGA0_XB_RFINTERFACEOE;

 rtlphy->phyreg_def[RF90_PATH_A].rf3wire_offset =
     RFPGA0_XA_LSSIPARAMETER;
 rtlphy->phyreg_def[RF90_PATH_B].rf3wire_offset =
     RFPGA0_XB_LSSIPARAMETER;

 rtlphy->phyreg_def[RF90_PATH_A].rflssi_select = RFPGA0_XAB_RFPARAMETER;
 rtlphy->phyreg_def[RF90_PATH_B].rflssi_select = RFPGA0_XAB_RFPARAMETER;
 rtlphy->phyreg_def[RF90_PATH_C].rflssi_select = RFPGA0_XCD_RFPARAMETER;
 rtlphy->phyreg_def[RF90_PATH_D].rflssi_select = RFPGA0_XCD_RFPARAMETER;

 rtlphy->phyreg_def[RF90_PATH_A].rftxgain_stage = RFPGA0_TXGAINSTAGE;
 rtlphy->phyreg_def[RF90_PATH_B].rftxgain_stage = RFPGA0_TXGAINSTAGE;
 rtlphy->phyreg_def[RF90_PATH_C].rftxgain_stage = RFPGA0_TXGAINSTAGE;
 rtlphy->phyreg_def[RF90_PATH_D].rftxgain_stage = RFPGA0_TXGAINSTAGE;

 rtlphy->phyreg_def[RF90_PATH_A].rfhssi_para1 = RFPGA0_XA_HSSIPARAMETER1;
 rtlphy->phyreg_def[RF90_PATH_B].rfhssi_para1 = RFPGA0_XB_HSSIPARAMETER1;

 rtlphy->phyreg_def[RF90_PATH_A].rfhssi_para2 = RFPGA0_XA_HSSIPARAMETER2;
 rtlphy->phyreg_def[RF90_PATH_B].rfhssi_para2 = RFPGA0_XB_HSSIPARAMETER2;

 rtlphy->phyreg_def[RF90_PATH_A].rfsw_ctrl = RFPGA0_XAB_SWITCHCONTROL;
 rtlphy->phyreg_def[RF90_PATH_B].rfsw_ctrl = RFPGA0_XAB_SWITCHCONTROL;
 rtlphy->phyreg_def[RF90_PATH_C].rfsw_ctrl = RFPGA0_XCD_SWITCHCONTROL;
 rtlphy->phyreg_def[RF90_PATH_D].rfsw_ctrl = RFPGA0_XCD_SWITCHCONTROL;

 rtlphy->phyreg_def[RF90_PATH_A].rfagc_control1 = ROFDM0_XAAGCCORE1;
 rtlphy->phyreg_def[RF90_PATH_B].rfagc_control1 = ROFDM0_XBAGCCORE1;
 rtlphy->phyreg_def[RF90_PATH_C].rfagc_control1 = ROFDM0_XCAGCCORE1;
 rtlphy->phyreg_def[RF90_PATH_D].rfagc_control1 = ROFDM0_XDAGCCORE1;

 rtlphy->phyreg_def[RF90_PATH_A].rfagc_control2 = ROFDM0_XAAGCCORE2;
 rtlphy->phyreg_def[RF90_PATH_B].rfagc_control2 = ROFDM0_XBAGCCORE2;
 rtlphy->phyreg_def[RF90_PATH_C].rfagc_control2 = ROFDM0_XCAGCCORE2;
 rtlphy->phyreg_def[RF90_PATH_D].rfagc_control2 = ROFDM0_XDAGCCORE2;

 rtlphy->phyreg_def[RF90_PATH_A].rfrxiq_imbal = ROFDM0_XARXIQIMBALANCE;
 rtlphy->phyreg_def[RF90_PATH_B].rfrxiq_imbal = ROFDM0_XBRXIQIMBALANCE;
 rtlphy->phyreg_def[RF90_PATH_C].rfrxiq_imbal = ROFDM0_XCRXIQIMBANLANCE;
 rtlphy->phyreg_def[RF90_PATH_D].rfrxiq_imbal = ROFDM0_XDRXIQIMBALANCE;

 rtlphy->phyreg_def[RF90_PATH_A].rfrx_afe = ROFDM0_XARXAFE;
 rtlphy->phyreg_def[RF90_PATH_B].rfrx_afe = ROFDM0_XBRXAFE;
 rtlphy->phyreg_def[RF90_PATH_C].rfrx_afe = ROFDM0_XCRXAFE;
 rtlphy->phyreg_def[RF90_PATH_D].rfrx_afe = ROFDM0_XDRXAFE;

 rtlphy->phyreg_def[RF90_PATH_A].rftxiq_imbal = ROFDM0_XATXIQIMBALANCE;
 rtlphy->phyreg_def[RF90_PATH_B].rftxiq_imbal = ROFDM0_XBTXIQIMBALANCE;
 rtlphy->phyreg_def[RF90_PATH_C].rftxiq_imbal = ROFDM0_XCTXIQIMBALANCE;
 rtlphy->phyreg_def[RF90_PATH_D].rftxiq_imbal = ROFDM0_XDTXIQIMBALANCE;

 rtlphy->phyreg_def[RF90_PATH_A].rftx_afe = ROFDM0_XATXAFE;
 rtlphy->phyreg_def[RF90_PATH_B].rftx_afe = ROFDM0_XBTXAFE;
 rtlphy->phyreg_def[RF90_PATH_C].rftx_afe = ROFDM0_XCTXAFE;
 rtlphy->phyreg_def[RF90_PATH_D].rftx_afe = ROFDM0_XDTXAFE;

 rtlphy->phyreg_def[RF90_PATH_A].rf_rb = RFPGA0_XA_LSSIREADBACK;
 rtlphy->phyreg_def[RF90_PATH_B].rf_rb = RFPGA0_XB_LSSIREADBACK;
 rtlphy->phyreg_def[RF90_PATH_C].rf_rb = RFPGA0_XC_LSSIREADBACK;
 rtlphy->phyreg_def[RF90_PATH_D].rf_rb = RFPGA0_XD_LSSIREADBACK;

 rtlphy->phyreg_def[RF90_PATH_A].rf_rbpi = TRANSCEIVEA_HSPI_READBACK;
 rtlphy->phyreg_def[RF90_PATH_B].rf_rbpi = TRANSCEIVEB_HSPI_READBACK;

}
