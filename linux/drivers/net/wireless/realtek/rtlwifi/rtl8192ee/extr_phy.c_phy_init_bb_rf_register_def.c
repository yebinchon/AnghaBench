
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_phy {TYPE_1__* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int rf_rbpi; int rf_rb; int rfhssi_para2; int rf3wire_offset; void* rfintfe; void* rfintfo; void* rfintfs; } ;


 size_t RF90_PATH_A ;
 size_t RF90_PATH_B ;
 void* RFPGA0_XAB_RFINTERFACESW ;
 int RFPGA0_XA_HSSIPARAMETER2 ;
 int RFPGA0_XA_LSSIPARAMETER ;
 int RFPGA0_XA_LSSIREADBACK ;
 void* RFPGA0_XA_RFINTERFACEOE ;
 int RFPGA0_XB_HSSIPARAMETER2 ;
 int RFPGA0_XB_LSSIPARAMETER ;
 int RFPGA0_XB_LSSIREADBACK ;
 void* RFPGA0_XB_RFINTERFACEOE ;
 int TRANSCEIVEA_HSPI_READBACK ;
 int TRANSCEIVEB_HSPI_READBACK ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void phy_init_bb_rf_register_def(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;

 rtlphy->phyreg_def[RF90_PATH_A].rfintfs = RFPGA0_XAB_RFINTERFACESW;
 rtlphy->phyreg_def[RF90_PATH_B].rfintfs = RFPGA0_XAB_RFINTERFACESW;

 rtlphy->phyreg_def[RF90_PATH_A].rfintfo = RFPGA0_XA_RFINTERFACEOE;
 rtlphy->phyreg_def[RF90_PATH_B].rfintfo = RFPGA0_XB_RFINTERFACEOE;

 rtlphy->phyreg_def[RF90_PATH_A].rfintfe = RFPGA0_XA_RFINTERFACEOE;
 rtlphy->phyreg_def[RF90_PATH_B].rfintfe = RFPGA0_XB_RFINTERFACEOE;

 rtlphy->phyreg_def[RF90_PATH_A].rf3wire_offset =
       RFPGA0_XA_LSSIPARAMETER;
 rtlphy->phyreg_def[RF90_PATH_B].rf3wire_offset =
       RFPGA0_XB_LSSIPARAMETER;

 rtlphy->phyreg_def[RF90_PATH_A].rfhssi_para2 = RFPGA0_XA_HSSIPARAMETER2;
 rtlphy->phyreg_def[RF90_PATH_B].rfhssi_para2 = RFPGA0_XB_HSSIPARAMETER2;

 rtlphy->phyreg_def[RF90_PATH_A].rf_rb = RFPGA0_XA_LSSIREADBACK;
 rtlphy->phyreg_def[RF90_PATH_B].rf_rb = RFPGA0_XB_LSSIREADBACK;

 rtlphy->phyreg_def[RF90_PATH_A].rf_rbpi = TRANSCEIVEA_HSPI_READBACK;
 rtlphy->phyreg_def[RF90_PATH_B].rf_rbpi = TRANSCEIVEB_HSPI_READBACK;
}
