
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * rx_cfo_tail; int * rx_cfo_short; scalar_t__* rx_snr_db; int * rx_evm_dbm; int * rx_rssi_percentage; } ;
struct rtl_priv {TYPE_1__ stats; } ;
struct ieee80211_hw {int dummy; } ;


 int RA_CFOLONGDUMP ;
 int RA_CFOSHORTDUMP ;
 int RA_RSSIDUMP ;
 int RA_RXSNRDUMP ;
 int RB_CFOLONGDUMP ;
 int RB_CFOSHORTDUMP ;
 int RB_RSSIDUMP ;
 int RB_RXSNRDUMP ;
 int RS1_RXEVMDUMP ;
 int RS2_RXEVMDUMP ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;
 int rtl_write_word (struct rtl_priv*,int ,int ) ;

__attribute__((used)) static void rtl92ee_rssi_dump_to_register(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_byte(rtlpriv, RA_RSSIDUMP,
         rtlpriv->stats.rx_rssi_percentage[0]);
 rtl_write_byte(rtlpriv, RB_RSSIDUMP,
         rtlpriv->stats.rx_rssi_percentage[1]);





 rtl_write_byte(rtlpriv, RS1_RXEVMDUMP, rtlpriv->stats.rx_evm_dbm[0]);
 rtl_write_byte(rtlpriv, RS2_RXEVMDUMP, rtlpriv->stats.rx_evm_dbm[1]);

 rtl_write_byte(rtlpriv, RA_RXSNRDUMP,
         (u8)(rtlpriv->stats.rx_snr_db[0]));
 rtl_write_byte(rtlpriv, RB_RXSNRDUMP,
         (u8)(rtlpriv->stats.rx_snr_db[1]));

 rtl_write_word(rtlpriv, RA_CFOSHORTDUMP,
         rtlpriv->stats.rx_cfo_short[0]);
 rtl_write_word(rtlpriv, RB_CFOSHORTDUMP,
         rtlpriv->stats.rx_cfo_short[1]);

 rtl_write_word(rtlpriv, RA_CFOLONGDUMP, rtlpriv->stats.rx_cfo_tail[0]);
 rtl_write_word(rtlpriv, RB_CFOLONGDUMP, rtlpriv->stats.rx_cfo_tail[1]);
}
