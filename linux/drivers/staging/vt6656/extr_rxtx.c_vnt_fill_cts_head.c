
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ra; int frame_control; int duration; } ;
struct vnt_cts {int data_head; TYPE_1__ data; int duration_ba; int b; } ;
union vnt_tx_data_head {struct vnt_cts cts_g; } ;
typedef int u32 ;
typedef int u16 ;
struct vnt_usb_send_context {int pkt_type; int tx_rate; struct vnt_private* priv; } ;
struct vnt_private {int current_net_addr; int top_cck_basic_rate; } ;


 int CTSDUR_BA ;
 int IEEE80211_FTYPE_CTL ;
 int IEEE80211_STYPE_CTS ;
 int PK_TYPE_11B ;
 int cpu_to_le16 (int) ;
 int ether_addr_copy (int ,int ) ;
 int vnt_get_phy_field (struct vnt_private*,int,int ,int ,int *) ;
 int vnt_get_rtscts_duration_le (struct vnt_usb_send_context*,int ,int ,int ) ;
 int vnt_rxtx_datahead_g (struct vnt_usb_send_context*,int *) ;

__attribute__((used)) static u16 vnt_fill_cts_head(struct vnt_usb_send_context *tx_context,
        union vnt_tx_data_head *head)
{
 struct vnt_private *priv = tx_context->priv;
 struct vnt_cts *buf = &head->cts_g;
 u32 cts_frame_len = 14;
 u16 current_rate = tx_context->tx_rate;


 vnt_get_phy_field(priv, cts_frame_len, priv->top_cck_basic_rate,
     PK_TYPE_11B, &buf->b);

 buf->duration_ba =
  vnt_get_rtscts_duration_le(tx_context, CTSDUR_BA,
        tx_context->pkt_type,
        current_rate);

 buf->data.duration = buf->duration_ba;
 buf->data.frame_control =
  cpu_to_le16(IEEE80211_FTYPE_CTL | IEEE80211_STYPE_CTS);

 ether_addr_copy(buf->data.ra, priv->current_net_addr);

 return vnt_rxtx_datahead_g(tx_context, &buf->data_head);
}
