
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int queue; } ;
struct xmit_priv {int free_xmitframe_cnt; int free_xmitbuf_cnt; int free_xmit_extbuf_cnt; int* wmm_para_seq; int txirp_cnt; int ack_tx; int ack_tx_ops; int ack_tx_mutex; scalar_t__ voq_cnt; scalar_t__ viq_cnt; scalar_t__ bkq_cnt; scalar_t__ beq_cnt; int hwxmit_entry; int hwxmits; TYPE_1__ free_xmit_extbuf_queue; void* pxmit_extbuf; void* pallocated_xmit_extbuf; TYPE_1__ free_xmitbuf_queue; void* pxmitbuf; void* pallocated_xmitbuf; TYPE_1__ pending_xmitbuf_queue; int frag_len; TYPE_1__ free_xmit_queue; int * pxmit_frame_buf; void* pallocated_frame_buf; TYPE_1__ bm_pending; TYPE_1__ vo_pending; TYPE_1__ vi_pending; TYPE_1__ bk_pending; TYPE_1__ be_pending; struct adapter* adapter; int lock; } ;
struct xmit_frame {int list; int * pxmitbuf; int * buf_addr; int * pkt; int frame_tag; struct adapter* padapter; } ;
struct xmit_buf {int ext_tag; int list; struct adapter* padapter; int * priv_data; int flags; } ;
struct adapter {int dummy; } ;
typedef int s32 ;


 int INIT_LIST_HEAD (int *) ;
 int MAX_FRAG_THRESHOLD ;
 int MAX_XMITBUF_SZ ;
 int MAX_XMIT_EXTBUF_SZ ;
 int NR_XMITBUFF ;
 int NR_XMITFRAME ;
 int NR_XMIT_EXTBUFF ;
 int NULL_FRAMETAG ;
 void* PTR_ALIGN (void*,int) ;
 int RT_TRACE (int ,int ,char*) ;
 int XMITBUF_ALIGN_SZ ;
 int XMIT_VO_QUEUE ;
 int _FAIL ;
 int _SUCCESS ;
 int _drv_err_ ;
 int _module_rtl871x_xmit_c_ ;
 int _rtw_init_queue (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int msleep (int) ;
 int mutex_init (int *) ;
 int rtw_alloc_hwxmits (struct adapter*) ;
 int rtw_hal_init_xmit_priv (struct adapter*) ;
 int rtw_init_hwxmits (int ,int ) ;
 int rtw_os_xmit_resource_alloc (struct adapter*,struct xmit_buf*,int) ;
 int rtw_sctx_init (int *,int ) ;
 int spin_lock_init (int *) ;
 void* vzalloc (int) ;

s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
{
 int i;
 struct xmit_buf *pxmitbuf;
 struct xmit_frame *pxframe;
 int res = _SUCCESS;
 u32 max_xmit_extbuf_size = MAX_XMIT_EXTBUF_SZ;
 u32 num_xmit_extbuf = NR_XMIT_EXTBUFF;



 spin_lock_init(&pxmitpriv->lock);





 pxmitpriv->adapter = padapter;

 _rtw_init_queue(&pxmitpriv->be_pending);
 _rtw_init_queue(&pxmitpriv->bk_pending);
 _rtw_init_queue(&pxmitpriv->vi_pending);
 _rtw_init_queue(&pxmitpriv->vo_pending);
 _rtw_init_queue(&pxmitpriv->bm_pending);

 _rtw_init_queue(&pxmitpriv->free_xmit_queue);







 pxmitpriv->pallocated_frame_buf = vzalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4);

 if (!pxmitpriv->pallocated_frame_buf) {
  pxmitpriv->pxmit_frame_buf = ((void*)0);
  RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xmit_frame fail!\n"));
  res = _FAIL;
  goto exit;
 }
 pxmitpriv->pxmit_frame_buf = PTR_ALIGN(pxmitpriv->pallocated_frame_buf, 4);

 pxframe = (struct xmit_frame *)pxmitpriv->pxmit_frame_buf;

 for (i = 0; i < NR_XMITFRAME; i++) {
  INIT_LIST_HEAD(&pxframe->list);

  pxframe->padapter = padapter;
  pxframe->frame_tag = NULL_FRAMETAG;

  pxframe->pkt = ((void*)0);

  pxframe->buf_addr = ((void*)0);
  pxframe->pxmitbuf = ((void*)0);

  list_add_tail(&pxframe->list, &pxmitpriv->free_xmit_queue.queue);

  pxframe++;
 }

 pxmitpriv->free_xmitframe_cnt = NR_XMITFRAME;

 pxmitpriv->frag_len = MAX_FRAG_THRESHOLD;


 _rtw_init_queue(&pxmitpriv->free_xmitbuf_queue);
 _rtw_init_queue(&pxmitpriv->pending_xmitbuf_queue);

 pxmitpriv->pallocated_xmitbuf = vzalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4);

 if (!pxmitpriv->pallocated_xmitbuf) {
  RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xmit_buf fail!\n"));
  res = _FAIL;
  goto exit;
 }

 pxmitpriv->pxmitbuf = PTR_ALIGN(pxmitpriv->pallocated_xmitbuf, 4);

 pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;

 for (i = 0; i < NR_XMITBUFF; i++) {
  INIT_LIST_HEAD(&pxmitbuf->list);

  pxmitbuf->priv_data = ((void*)0);
  pxmitbuf->padapter = padapter;
  pxmitbuf->ext_tag = 0;


  res = rtw_os_xmit_resource_alloc(padapter, pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
  if (res == _FAIL) {
   msleep(10);
   res = rtw_os_xmit_resource_alloc(padapter, pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
   if (res == _FAIL)
    goto exit;
  }

  pxmitbuf->flags = XMIT_VO_QUEUE;

  list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmitbuf_queue.queue);
  pxmitbuf++;
 }

 pxmitpriv->free_xmitbuf_cnt = NR_XMITBUFF;


 _rtw_init_queue(&pxmitpriv->free_xmit_extbuf_queue);

 pxmitpriv->pallocated_xmit_extbuf = vzalloc(num_xmit_extbuf * sizeof(struct xmit_buf) + 4);

 if (!pxmitpriv->pallocated_xmit_extbuf) {
  RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xmit_extbuf fail!\n"));
  res = _FAIL;
  goto exit;
 }

 pxmitpriv->pxmit_extbuf = PTR_ALIGN(pxmitpriv->pallocated_xmit_extbuf, 4);

 pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;

 for (i = 0; i < num_xmit_extbuf; i++) {
  INIT_LIST_HEAD(&pxmitbuf->list);

  pxmitbuf->priv_data = ((void*)0);
  pxmitbuf->padapter = padapter;
  pxmitbuf->ext_tag = 1;

  res = rtw_os_xmit_resource_alloc(padapter, pxmitbuf, max_xmit_extbuf_size + XMITBUF_ALIGN_SZ);
  if (res == _FAIL) {
   res = _FAIL;
   goto exit;
  }

  list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmit_extbuf_queue.queue);
  pxmitbuf++;
 }

 pxmitpriv->free_xmit_extbuf_cnt = num_xmit_extbuf;

 res = rtw_alloc_hwxmits(padapter);
 if (res == _FAIL)
  goto exit;
 rtw_init_hwxmits(pxmitpriv->hwxmits, pxmitpriv->hwxmit_entry);

 for (i = 0; i < 4; i++)
  pxmitpriv->wmm_para_seq[i] = i;

 pxmitpriv->txirp_cnt = 1;


 pxmitpriv->beq_cnt = 0;
 pxmitpriv->bkq_cnt = 0;
 pxmitpriv->viq_cnt = 0;
 pxmitpriv->voq_cnt = 0;

 pxmitpriv->ack_tx = 0;
 mutex_init(&pxmitpriv->ack_tx_mutex);
 rtw_sctx_init(&pxmitpriv->ack_tx_ops, 0);

 rtw_hal_init_xmit_priv(padapter);

exit:
 return res;
}
