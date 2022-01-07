
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct pkt_attrib {int nr_frags; int iv_len; int last_txcmdsz; } ;
struct xmit_frame {int pkt_offset; int * buf_addr; struct pkt_attrib attrib; } ;
struct net_device {int dummy; } ;


 int PACKET_OFFSET_SZ ;
 int TXDESC_SIZE ;
 int mon_recv_decrypted (struct net_device*,int *,int ,int ,int ) ;
 int netif_running (struct net_device*) ;
 scalar_t__ round_up (size_t,int) ;

void rtl88eu_mon_xmit_hook(struct net_device *dev, struct xmit_frame *frame,
      uint frag_len)
{
 struct pkt_attrib *attr;
 u8 *data;
 int i, offset;

 if (!dev || !frame)
  return;
 if (!netif_running(dev))
  return;

 attr = &frame->attrib;

 offset = TXDESC_SIZE + frame->pkt_offset * PACKET_OFFSET_SZ;
 data = frame->buf_addr + offset;

 for (i = 0; i < attr->nr_frags - 1; i++) {
  mon_recv_decrypted(dev, data, frag_len, attr->iv_len, 0);
  data += frag_len;
  data = (u8 *)round_up((size_t)data, 4);
 }

 mon_recv_decrypted(dev, data, attr->last_txcmdsz, attr->iv_len, 0);
}
