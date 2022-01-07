
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int dev; int protocol; } ;
struct TYPE_8__ {unsigned int rx_bytes; int rx_packets; int rx_errors; int rx_dropped; } ;
struct TYPE_7__ {int snooze_guard; } ;
struct TYPE_5__ {int failure; } ;
struct TYPE_6__ {scalar_t__ rsn_enabled; TYPE_1__ mic_failure; } ;
struct ks_wlan_private {scalar_t__ rx_size; int* rxp; int connect_status; TYPE_4__ nstats; int net_dev; TYPE_3__ psstatus; TYPE_2__ wpa; int * eth_addr; } ;
struct ieee802_1x_hdr {scalar_t__ type; } ;
struct ether_hdr {unsigned char h_proto; int * h_source; } ;


 int ETHER_HDR_SIZE ;
 int ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 int FORCE_DISCONNECT ;
 scalar_t__ IEEE802_1X_TYPE_EAPOL_KEY ;


 scalar_t__ TYPE_DATA ;
 int atomic_set (int *,int) ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 scalar_t__ get_word (struct ks_wlan_private*) ;
 int hostif_data_indication_wpa (struct ks_wlan_private*,scalar_t__) ;
 int netdev_dbg (int ,char*,unsigned int) ;
 int netdev_err (int ,char*,...) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,unsigned char*,unsigned int) ;

__attribute__((used)) static
void hostif_data_indication(struct ks_wlan_private *priv)
{
 unsigned int rx_ind_size;
 struct sk_buff *skb;
 u16 auth_type;
 unsigned char temp[256];
 struct ether_hdr *eth_hdr;
 struct ieee802_1x_hdr *aa1x_hdr;
 size_t size;
 int ret;


 if (priv->rx_size <= ETH_HLEN) {
  priv->nstats.rx_errors++;
  return;
 }

 auth_type = get_word(priv);
 get_word(priv);

 eth_hdr = (struct ether_hdr *)(priv->rxp);


 if (ether_addr_equal(&priv->eth_addr[0], eth_hdr->h_source)) {
  netdev_err(priv->net_dev, "invalid : source is own mac address !!\n");
  netdev_err(priv->net_dev,
      "eth_hdrernet->h_dest=%02X:%02X:%02X:%02X:%02X:%02X\n",
      eth_hdr->h_source[0], eth_hdr->h_source[1],
      eth_hdr->h_source[2], eth_hdr->h_source[3],
      eth_hdr->h_source[4], eth_hdr->h_source[5]);
  priv->nstats.rx_errors++;
  return;
 }


 if (auth_type != TYPE_DATA && priv->wpa.rsn_enabled) {
  ret = hostif_data_indication_wpa(priv, auth_type);
  if (ret)
   return;
 }

 if ((priv->connect_status & FORCE_DISCONNECT) ||
     priv->wpa.mic_failure.failure == 2) {
  return;
 }


 switch (*(priv->rxp + 12)) {
 case 128:
  rx_ind_size = priv->rx_size - 6;
  skb = dev_alloc_skb(rx_ind_size);
  if (!skb) {
   priv->nstats.rx_dropped++;
   return;
  }
  netdev_dbg(priv->net_dev, "SNAP, rx_ind_size = %d\n",
      rx_ind_size);

  size = ETH_ALEN * 2;
  skb_put_data(skb, priv->rxp, size);



  size = rx_ind_size - (ETH_ALEN * 2);
  skb_put_data(skb, &eth_hdr->h_proto, size);

  aa1x_hdr = (struct ieee802_1x_hdr *)(priv->rxp + ETHER_HDR_SIZE);
  break;
 case 129:
  rx_ind_size = (priv->rx_size + 2);
  skb = dev_alloc_skb(rx_ind_size);
  if (!skb) {
   priv->nstats.rx_dropped++;
   return;
  }
  netdev_dbg(priv->net_dev, "NETBEUI/NetBIOS rx_ind_size=%d\n",
      rx_ind_size);


  skb_put_data(skb, priv->rxp, 12);


  temp[0] = (((rx_ind_size - 12) >> 8) & 0xff);
  temp[1] = ((rx_ind_size - 12) & 0xff);
  skb_put_data(skb, temp, 2);


  skb_put_data(skb, priv->rxp + 12, rx_ind_size - 14);

  aa1x_hdr = (struct ieee802_1x_hdr *)(priv->rxp + 14);
  break;
 default:
  netdev_err(priv->net_dev, "invalid data format\n");
  priv->nstats.rx_errors++;
  return;
 }

 if (aa1x_hdr->type == IEEE802_1X_TYPE_EAPOL_KEY &&
     priv->wpa.rsn_enabled)
  atomic_set(&priv->psstatus.snooze_guard, 1);


 skb->dev = priv->net_dev;
 skb->protocol = eth_type_trans(skb, skb->dev);
 priv->nstats.rx_packets++;
 priv->nstats.rx_bytes += rx_ind_size;
 netif_rx(skb);
}
