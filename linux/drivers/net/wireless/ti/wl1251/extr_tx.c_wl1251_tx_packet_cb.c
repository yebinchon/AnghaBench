
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int retry_count; } ;
struct wl1251 {struct sk_buff** tx_frames; int hw; TYPE_3__ stats; } ;
struct tx_result {size_t id; int status; int rate; int ack_failures; } ;
struct tx_double_buffer_desc {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {TYPE_4__* hw_key; } ;
struct TYPE_7__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_5__ control; TYPE_2__ status; } ;
struct TYPE_9__ {scalar_t__ cipher; } ;
struct TYPE_6__ {scalar_t__ count; } ;


 int DEBUG_TX ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_INJECTED ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_STAT_ACK ;
 int TX_SUCCESS ;
 int WL1251_TKIP_IV_SPACE ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 int ieee80211_tx_status (int ,struct sk_buff*) ;
 int memmove (int *,int *,int) ;
 int * skb_pull (struct sk_buff*,int) ;
 int wl1251_debug (int ,char*,size_t,struct sk_buff*,int ,int ,int ,int ) ;
 int wl1251_error (char*,size_t) ;
 int wl1251_tx_parse_status (int ) ;

__attribute__((used)) static void wl1251_tx_packet_cb(struct wl1251 *wl,
    struct tx_result *result)
{
 struct ieee80211_tx_info *info;
 struct sk_buff *skb;
 int hdrlen;
 u8 *frame;

 skb = wl->tx_frames[result->id];
 if (skb == ((void*)0)) {
  wl1251_error("SKB for packet %d is NULL", result->id);
  return;
 }

 info = IEEE80211_SKB_CB(skb);

 if (!(info->flags & IEEE80211_TX_CTL_NO_ACK) &&
     !(info->flags & IEEE80211_TX_CTL_INJECTED) &&
     (result->status == TX_SUCCESS))
  info->flags |= IEEE80211_TX_STAT_ACK;

 info->status.rates[0].count = result->ack_failures + 1;
 wl->stats.retry_count += result->ack_failures;





 frame = skb_pull(skb, sizeof(struct tx_double_buffer_desc));
 if (info->control.hw_key &&
     info->control.hw_key->cipher == WLAN_CIPHER_SUITE_TKIP) {
  hdrlen = ieee80211_get_hdrlen_from_skb(skb);
  memmove(frame + WL1251_TKIP_IV_SPACE, frame, hdrlen);
  skb_pull(skb, WL1251_TKIP_IV_SPACE);
 }

 wl1251_debug(DEBUG_TX, "tx status id %u skb 0x%p failures %u rate 0x%x"
       " status 0x%x (%s)",
       result->id, skb, result->ack_failures, result->rate,
       result->status, wl1251_tx_parse_status(result->status));


 ieee80211_tx_status(wl->hw, skb);

 wl->tx_frames[result->id] = ((void*)0);
}
