
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pkt; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct recv_priv {scalar_t__ precv_frame_buf; } ;
typedef scalar_t__ sint ;


 scalar_t__ NR_RECVFRAME ;
 int dev_kfree_skb_any (int *) ;

void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
{
 sint i;
 union recv_frame *precvframe;

 precvframe = (union recv_frame*) precvpriv->precv_frame_buf;

 for (i = 0; i < NR_RECVFRAME; i++) {
  if (precvframe->u.hdr.pkt) {
   dev_kfree_skb_any(precvframe->u.hdr.pkt);
   precvframe->u.hdr.pkt = ((void*)0);
  }
  precvframe++;
 }
}
