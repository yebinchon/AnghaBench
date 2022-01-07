
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_frame {int * pkt; } ;
struct _adapter {int dummy; } ;


 int dev_kfree_skb_any (int *) ;

void r8712_xmit_complete(struct _adapter *padapter, struct xmit_frame *pxframe)
{
 if (pxframe->pkt)
  dev_kfree_skb_any(pxframe->pkt);
 pxframe->pkt = ((void*)0);
}
