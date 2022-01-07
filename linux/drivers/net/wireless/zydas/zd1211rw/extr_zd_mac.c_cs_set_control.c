
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zd_mac {int dummy; } ;
struct zd_ctrlset {int control; } ;
struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_3__ {int flags; } ;


 int IEEE80211_TX_CTL_FIRST_FRAGMENT ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_RC_USE_CTS_PROTECT ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 int ZD_CS_NEED_RANDOM_BACKOFF ;
 int ZD_CS_NO_ACK ;
 int ZD_CS_PS_POLL_FRAME ;
 int ZD_CS_RTS ;
 int ZD_CS_SELF_CTS ;
 scalar_t__ ieee80211_is_pspoll (int ) ;

__attribute__((used)) static void cs_set_control(struct zd_mac *mac, struct zd_ctrlset *cs,
                    struct ieee80211_hdr *header,
                    struct ieee80211_tx_info *info)
{






 cs->control = 0;


 if (info->flags & IEEE80211_TX_CTL_FIRST_FRAGMENT)
  cs->control |= ZD_CS_NEED_RANDOM_BACKOFF;


 if (info->flags & IEEE80211_TX_CTL_NO_ACK)
  cs->control |= ZD_CS_NO_ACK;


 if (ieee80211_is_pspoll(header->frame_control))
  cs->control |= ZD_CS_PS_POLL_FRAME;

 if (info->control.rates[0].flags & IEEE80211_TX_RC_USE_RTS_CTS)
  cs->control |= ZD_CS_RTS;

 if (info->control.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT)
  cs->control |= ZD_CS_SELF_CTS;


}
