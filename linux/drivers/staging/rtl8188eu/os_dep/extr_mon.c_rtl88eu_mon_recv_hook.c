
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rx_pkt_attrib {scalar_t__ bdecrypted; int encrypt; } ;
struct recv_frame {TYPE_1__* pkt; struct rx_pkt_attrib attrib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int len; int * data; } ;


 int SET_ICE_IV_LEN (int,int,int ) ;
 int mon_recv_decrypted (struct net_device*,int *,int,int,int) ;
 int mon_recv_encrypted (struct net_device*,int *,int) ;
 int netif_running (struct net_device*) ;

void rtl88eu_mon_recv_hook(struct net_device *dev, struct recv_frame *frame)
{
 struct rx_pkt_attrib *attr;
 int iv_len, icv_len;
 int data_len;
 u8 *data;

 if (!dev || !frame)
  return;
 if (!netif_running(dev))
  return;

 attr = &frame->attrib;
 data = frame->pkt->data;
 data_len = frame->pkt->len;


 SET_ICE_IV_LEN(iv_len, icv_len, attr->encrypt);

 if (attr->bdecrypted)
  mon_recv_decrypted(dev, data, data_len, iv_len, icv_len);
 else
  mon_recv_encrypted(dev, data, data_len);
}
