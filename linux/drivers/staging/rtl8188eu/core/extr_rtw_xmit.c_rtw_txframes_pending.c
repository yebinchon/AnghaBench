
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queue; } ;
struct TYPE_8__ {int queue; } ;
struct TYPE_7__ {int queue; } ;
struct TYPE_6__ {int queue; } ;
struct xmit_priv {TYPE_1__ vo_pending; TYPE_4__ vi_pending; TYPE_3__ bk_pending; TYPE_2__ be_pending; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef int s32 ;


 int list_empty (int *) ;

s32 rtw_txframes_pending(struct adapter *padapter)
{
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 return (!list_empty(&pxmitpriv->be_pending.queue) ||
  !list_empty(&pxmitpriv->bk_pending.queue) ||
  !list_empty(&pxmitpriv->vi_pending.queue) ||
  !list_empty(&pxmitpriv->vo_pending.queue));
}
