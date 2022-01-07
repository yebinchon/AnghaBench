
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct fw_priv {int rf_config; } ;


 int _rtl92s_firmware_header_map_rftype (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92s_firmwareheader_priveupdate(struct ieee80211_hw *hw,
  struct fw_priv *pfw_priv)
{

 pfw_priv->rf_config = _rtl92s_firmware_header_map_rftype(hw);
}
