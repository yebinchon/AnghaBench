
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct rtl8xxxu_priv {TYPE_1__* udev; } ;
struct TYPE_10__ {int payload; } ;
struct TYPE_9__ {int rate; int macid; int noisy_state; int dummy0_0; } ;
struct TYPE_8__ {int status; int ext_id; } ;
struct TYPE_7__ {int tx_rx_mask; int bt_has_reset; int response_source; } ;
struct rtl8723bu_c2h {int id; TYPE_5__ raw; int seq; TYPE_4__ ra_report; TYPE_3__ bt_mp_info; TYPE_2__ bt_info; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;


 int BT_INFO_SRC_8723B_BT_ACTIVE_SEND ;



 int DUMP_PREFIX_NONE ;
 int KERN_INFO ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,int ) ;
 int print_hex_dump (int ,char*,int ,int,int,int ,int,int) ;

__attribute__((used)) static void rtl8723bu_handle_c2h(struct rtl8xxxu_priv *priv,
     struct sk_buff *skb)
{
 struct rtl8723bu_c2h *c2h = (struct rtl8723bu_c2h *)skb->data;
 struct device *dev = &priv->udev->dev;
 int len;

 len = skb->len - 2;

 dev_dbg(dev, "C2H ID %02x seq %02x, len %02x source %02x\n",
  c2h->id, c2h->seq, len, c2h->bt_info.response_source);

 switch(c2h->id) {
 case 130:
  if (c2h->bt_info.response_source >
      BT_INFO_SRC_8723B_BT_ACTIVE_SEND)
   dev_dbg(dev, "C2H_BT_INFO WiFi only firmware\n");
  else
   dev_dbg(dev, "C2H_BT_INFO BT/WiFi coexist firmware\n");

  if (c2h->bt_info.bt_has_reset)
   dev_dbg(dev, "BT has been reset\n");
  if (c2h->bt_info.tx_rx_mask)
   dev_dbg(dev, "BT TRx mask\n");

  break;
 case 129:
  dev_dbg(dev, "C2H_MP_INFO ext ID %02x, status %02x\n",
   c2h->bt_mp_info.ext_id, c2h->bt_mp_info.status);
  break;
 case 128:
  dev_dbg(dev,
   "C2H RA RPT: rate %02x, unk %i, macid %02x, noise %i\n",
   c2h->ra_report.rate, c2h->ra_report.dummy0_0,
   c2h->ra_report.macid, c2h->ra_report.noisy_state);
  break;
 default:
  dev_info(dev, "Unhandled C2H event %02x seq %02x\n",
    c2h->id, c2h->seq);
  print_hex_dump(KERN_INFO, "C2H content: ", DUMP_PREFIX_NONE,
          16, 1, c2h->raw.payload, len, 0);
  break;
 }
}
