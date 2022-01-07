
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct _adapter* adapter; } ;
struct TYPE_5__ {TYPE_1__ hdr; int list; } ;
union recv_frame {TYPE_2__ u; } ;
struct TYPE_6__ {int queue; } ;
struct recv_priv {int free_recvframe_cnt; int rx_pending_cnt; TYPE_3__ free_recv_queue; int * precv_frame_buf; int * pallocated_frame_buf; struct _adapter* adapter; TYPE_3__ recv_pending_queue; int lock; } ;
struct _adapter {int dummy; } ;
typedef int sint ;
typedef int addr_t ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int NR_RECVFRAME ;
 int RXFRAME_ALIGN_SZ ;
 int _init_queue (TYPE_3__*) ;
 int kmemleak_not_leak (int *) ;
 int * kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (unsigned char*,int ,int) ;
 int r8712_init_recv_priv (struct recv_priv*,struct _adapter*) ;
 int r8712_os_recv_resource_alloc (struct _adapter*,union recv_frame*) ;
 int spin_lock_init (int *) ;

void _r8712_init_recv_priv(struct recv_priv *precvpriv,
      struct _adapter *padapter)
{
 sint i;
 union recv_frame *precvframe;

 memset((unsigned char *)precvpriv, 0, sizeof(struct recv_priv));
 spin_lock_init(&precvpriv->lock);
 _init_queue(&precvpriv->free_recv_queue);
 _init_queue(&precvpriv->recv_pending_queue);
 precvpriv->adapter = padapter;
 precvpriv->free_recvframe_cnt = NR_RECVFRAME;
 precvpriv->pallocated_frame_buf = kzalloc(NR_RECVFRAME *
    sizeof(union recv_frame) + RXFRAME_ALIGN_SZ,
    GFP_ATOMIC);
 if (precvpriv->pallocated_frame_buf == ((void*)0))
  return;
 kmemleak_not_leak(precvpriv->pallocated_frame_buf);
 precvpriv->precv_frame_buf = precvpriv->pallocated_frame_buf +
        RXFRAME_ALIGN_SZ -
        ((addr_t)(precvpriv->pallocated_frame_buf) &
        (RXFRAME_ALIGN_SZ - 1));
 precvframe = (union recv_frame *)precvpriv->precv_frame_buf;
 for (i = 0; i < NR_RECVFRAME; i++) {
  INIT_LIST_HEAD(&(precvframe->u.list));
  list_add_tail(&(precvframe->u.list),
     &(precvpriv->free_recv_queue.queue));
  r8712_os_recv_resource_alloc(padapter, precvframe);
  precvframe->u.hdr.adapter = padapter;
  precvframe++;
 }
 precvpriv->rx_pending_cnt = 1;
 r8712_init_recv_priv(precvpriv, padapter);
}
