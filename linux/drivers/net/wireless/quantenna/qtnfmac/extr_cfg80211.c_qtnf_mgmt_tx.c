
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct wireless_dev {TYPE_2__* netdev; } ;
struct wiphy {int dummy; } ;
struct qtnf_vif {int dummy; } ;
struct ieee80211_mgmt {int da; int frame_control; } ;
struct cfg80211_mgmt_tx_params {int len; scalar_t__ buf; TYPE_1__* chan; scalar_t__ dont_wait_for_ack; scalar_t__ no_cck; scalar_t__ offchan; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {scalar_t__ center_freq; } ;


 scalar_t__ QLINK_FRAME_TX_FLAG_ACK_NOWAIT ;
 scalar_t__ QLINK_FRAME_TX_FLAG_NO_CCK ;
 scalar_t__ QLINK_FRAME_TX_FLAG_OFFCHAN ;
 int le16_to_cpu (int ) ;
 int pr_debug (char*,int ,scalar_t__,int ,int ,int ,int ,scalar_t__) ;
 int prandom_u32 () ;
 int qtnf_cmd_send_frame (struct qtnf_vif*,int ,scalar_t__,scalar_t__,scalar_t__,int ) ;
 struct qtnf_vif* qtnf_netdev_get_priv (TYPE_2__*) ;

__attribute__((used)) static int
qtnf_mgmt_tx(struct wiphy *wiphy, struct wireless_dev *wdev,
      struct cfg80211_mgmt_tx_params *params, u64 *cookie)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(wdev->netdev);
 const struct ieee80211_mgmt *mgmt_frame = (void *)params->buf;
 u32 short_cookie = prandom_u32();
 u16 flags = 0;
 u16 freq;

 *cookie = short_cookie;

 if (params->offchan)
  flags |= QLINK_FRAME_TX_FLAG_OFFCHAN;

 if (params->no_cck)
  flags |= QLINK_FRAME_TX_FLAG_NO_CCK;

 if (params->dont_wait_for_ack)
  flags |= QLINK_FRAME_TX_FLAG_ACK_NOWAIT;




 if (params->chan)
  freq = params->chan->center_freq;
 else
  freq = 0;

 pr_debug("%s freq:%u; FC:%.4X; DA:%pM; len:%zu; C:%.8X; FL:%.4X\n",
   wdev->netdev->name, freq,
   le16_to_cpu(mgmt_frame->frame_control), mgmt_frame->da,
   params->len, short_cookie, flags);

 return qtnf_cmd_send_frame(vif, short_cookie, flags,
       freq, params->buf, params->len);
}
