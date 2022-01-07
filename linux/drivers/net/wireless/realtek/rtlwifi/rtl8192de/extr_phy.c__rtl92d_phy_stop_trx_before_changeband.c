
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int BCCKEN ;
 int BDWORD ;
 int BOFDMEN ;
 int MASKBYTE0 ;
 int RFPGA0_RFMOD ;
 int ROFDM0_TRXPATHENABLE ;
 int ROFDM1_TRXPATHENABLE ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;

__attribute__((used)) static void _rtl92d_phy_stop_trx_before_changeband(struct ieee80211_hw *hw)
{
 rtl_set_bbreg(hw, RFPGA0_RFMOD, BCCKEN, 0);
 rtl_set_bbreg(hw, RFPGA0_RFMOD, BOFDMEN, 0);
 rtl_set_bbreg(hw, ROFDM0_TRXPATHENABLE, MASKBYTE0, 0x00);
 rtl_set_bbreg(hw, ROFDM1_TRXPATHENABLE, BDWORD, 0x0);
}
