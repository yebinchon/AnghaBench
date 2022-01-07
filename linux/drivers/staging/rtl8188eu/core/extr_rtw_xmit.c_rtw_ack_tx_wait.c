
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct submit_ctx {int status; int timeout_ms; int submit_time; } ;
struct xmit_priv {struct submit_ctx ack_tx_ops; } ;


 int RTW_SCTX_SUBMITTED ;
 int jiffies ;
 int rtw_sctx_wait (struct submit_ctx*) ;

int rtw_ack_tx_wait(struct xmit_priv *pxmitpriv, u32 timeout_ms)
{
 struct submit_ctx *pack_tx_ops = &pxmitpriv->ack_tx_ops;

 pack_tx_ops->submit_time = jiffies;
 pack_tx_ops->timeout_ms = timeout_ms;
 pack_tx_ops->status = RTW_SCTX_SUBMITTED;

 return rtw_sctx_wait(pack_tx_ops);
}
