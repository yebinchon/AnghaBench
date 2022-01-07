
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int exist_sw_net_addr; scalar_t__ preamble_type; int auto_fb_ctrl; int bb_type; int packet_type; int op_mode; int long_retry_limit; int short_retry_limit; scalar_t__ num_rcb; scalar_t__ num_tx_context; } ;


 int AUTO_FB_0 ;
 int BBP_TYPE_DEF ;
 scalar_t__ CB_MAX_RX_DESC ;
 scalar_t__ CB_MAX_TX_DESC ;
 scalar_t__ CB_MIN_RX_DESC ;
 scalar_t__ CB_MIN_TX_DESC ;
 int LONG_RETRY_DEF ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ RX_DESC_DEF0 ;
 int SHORT_RETRY_DEF ;
 scalar_t__ TX_DESC_DEF0 ;
 scalar_t__ vnt_rx_buffers ;
 scalar_t__ vnt_tx_buffers ;

__attribute__((used)) static void vnt_set_options(struct vnt_private *priv)
{

 if (vnt_tx_buffers < CB_MIN_TX_DESC || vnt_tx_buffers > CB_MAX_TX_DESC)
  priv->num_tx_context = TX_DESC_DEF0;
 else
  priv->num_tx_context = vnt_tx_buffers;


 if (vnt_rx_buffers < CB_MIN_RX_DESC || vnt_rx_buffers > CB_MAX_RX_DESC)
  priv->num_rcb = RX_DESC_DEF0;
 else
  priv->num_rcb = vnt_rx_buffers;

 priv->short_retry_limit = SHORT_RETRY_DEF;
 priv->long_retry_limit = LONG_RETRY_DEF;
 priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;
 priv->bb_type = BBP_TYPE_DEF;
 priv->packet_type = priv->bb_type;
 priv->auto_fb_ctrl = AUTO_FB_0;
 priv->preamble_type = 0;
 priv->exist_sw_net_addr = 0;
}
