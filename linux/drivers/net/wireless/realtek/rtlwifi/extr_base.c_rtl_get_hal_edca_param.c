
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int use_short_slot; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_tx_queue_params {int txop; int aifs; int cw_min; int cw_max; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum wireless_mode { ____Placeholder_wireless_mode } wireless_mode ;
 int fls (int ) ;

u32 rtl_get_hal_edca_param(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      enum wireless_mode wirelessmode,
      struct ieee80211_tx_queue_params *param)
{
 u32 reg = 0;
 u8 sifstime = 10;
 u8 slottime = 20;


 switch (wirelessmode) {
 case 133:
 case 129:
 case 128:
 case 131:
 case 132:
  sifstime = 16;
  slottime = 9;
  break;
 case 130:
  slottime = (vif->bss_conf.use_short_slot ? 9 : 20);
  break;
 default:
  break;
 }

 reg |= (param->txop & 0x7FF) << 16;
 reg |= (fls(param->cw_max) & 0xF) << 12;
 reg |= (fls(param->cw_min) & 0xF) << 8;
 reg |= (param->aifs & 0x0F) * slottime + sifstime;

 return reg;
}
