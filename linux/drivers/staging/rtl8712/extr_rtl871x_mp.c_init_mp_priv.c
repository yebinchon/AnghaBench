
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_xmit_frame {int padapter; int frame_tag; int * pkt; int list; } ;
struct TYPE_2__ {int queue; } ;
struct mp_priv {int free_mp_xmitframe_cnt; int papdater; TYPE_1__ free_mp_xmitqueue; int * pmp_xmtframe_buf; int * pallocated_mp_xmitframe_buf; } ;
typedef int addr_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int MP_FRAMETAG ;
 int NR_MP_XMITFRAME ;
 int _init_mp_priv_ (struct mp_priv*) ;
 int _init_queue (TYPE_1__*) ;
 int * kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int init_mp_priv(struct mp_priv *pmp_priv)
{
 int i;
 struct mp_xmit_frame *pmp_xmitframe;

 _init_mp_priv_(pmp_priv);
 _init_queue(&pmp_priv->free_mp_xmitqueue);
 pmp_priv->pallocated_mp_xmitframe_buf = ((void*)0);
 pmp_priv->pallocated_mp_xmitframe_buf = kmalloc(NR_MP_XMITFRAME *
    sizeof(struct mp_xmit_frame) + 4,
    GFP_ATOMIC);
 if (!pmp_priv->pallocated_mp_xmitframe_buf) {
  return -ENOMEM;
 }
 pmp_priv->pmp_xmtframe_buf = pmp_priv->pallocated_mp_xmitframe_buf +
    4 -
    ((addr_t)(pmp_priv->pallocated_mp_xmitframe_buf) & 3);
 pmp_xmitframe = (struct mp_xmit_frame *)pmp_priv->pmp_xmtframe_buf;
 for (i = 0; i < NR_MP_XMITFRAME; i++) {
  INIT_LIST_HEAD(&(pmp_xmitframe->list));
  list_add_tail(&(pmp_xmitframe->list),
     &(pmp_priv->free_mp_xmitqueue.queue));
  pmp_xmitframe->pkt = ((void*)0);
  pmp_xmitframe->frame_tag = MP_FRAMETAG;
  pmp_xmitframe->padapter = pmp_priv->papdater;
  pmp_xmitframe++;
 }
 pmp_priv->free_mp_xmitframe_cnt = NR_MP_XMITFRAME;
 return 0;
}
