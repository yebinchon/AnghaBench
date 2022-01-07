
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * rx_cfo_tail; int * rx_cfo_short; scalar_t__* rx_snr_db; int * rx_evm_dbm; int * rx_rssi_percentage; } ;
struct rtl_priv {TYPE_1__ stats; } ;
struct ieee80211_hw {int dummy; } ;


 int RA_CFO_LONG_DUMP ;
 int RA_CFO_SHORT_DUMP ;
 int RA_RSSI_DUMP ;
 int RA_RX_SNR_DUMP ;
 int RB_CFO_LONG_DUMP ;
 int RB_CFO_SHORT_DUMP ;
 int RB_RSSI_DUMP ;
 int RB_RX_SNR_DUMP ;
 int RS1_RX_EVM_DUMP ;
 int RS2_RX_EVM_DUMP ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;
 int rtl_write_word (struct rtl_priv*,int ,int ) ;

__attribute__((used)) static void rtl8812ae_dm_rssi_dump_to_register(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_byte(rtlpriv, RA_RSSI_DUMP,
         rtlpriv->stats.rx_rssi_percentage[0]);
 rtl_write_byte(rtlpriv, RB_RSSI_DUMP,
         rtlpriv->stats.rx_rssi_percentage[1]);


 rtl_write_byte(rtlpriv, RS1_RX_EVM_DUMP,
         rtlpriv->stats.rx_evm_dbm[0]);
 rtl_write_byte(rtlpriv, RS2_RX_EVM_DUMP,
         rtlpriv->stats.rx_evm_dbm[1]);


 rtl_write_byte(rtlpriv, RA_RX_SNR_DUMP,
         (u8)(rtlpriv->stats.rx_snr_db[0]));
 rtl_write_byte(rtlpriv, RB_RX_SNR_DUMP,
         (u8)(rtlpriv->stats.rx_snr_db[1]));


 rtl_write_word(rtlpriv, RA_CFO_SHORT_DUMP,
         rtlpriv->stats.rx_cfo_short[0]);
 rtl_write_word(rtlpriv, RB_CFO_SHORT_DUMP,
         rtlpriv->stats.rx_cfo_short[1]);


 rtl_write_word(rtlpriv, RA_CFO_LONG_DUMP,
         rtlpriv->stats.rx_cfo_tail[0]);
 rtl_write_word(rtlpriv, RB_CFO_LONG_DUMP,
         rtlpriv->stats.rx_cfo_tail[1]);
}
