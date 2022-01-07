
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xmit_priv {int lock; } ;
struct TYPE_8__ {int tx_pending; int sta_pending; } ;
struct TYPE_7__ {int tx_pending; int sta_pending; } ;
struct TYPE_6__ {int tx_pending; int sta_pending; } ;
struct TYPE_5__ {int tx_pending; int sta_pending; } ;
struct sta_xmit_priv {TYPE_4__ be_q; TYPE_3__ bk_q; TYPE_2__ vi_q; TYPE_1__ vo_q; } ;
struct sta_priv {int sta_dz_bitmap; } ;
struct sta_info {struct sta_xmit_priv sta_xmitpriv; int aid; int state; } ;
struct adapter {struct xmit_priv xmitpriv; struct sta_priv stapriv; } ;


 int BIT (int ) ;
 int WIFI_SLEEP_STATE ;
 int dequeue_xmitframes_to_sleeping_queue (struct adapter*,struct sta_info*,int *) ;
 int list_del_init (int *) ;
 struct sta_info* rtw_get_bcmc_stainfo (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void stop_sta_xmit(struct adapter *padapter, struct sta_info *psta)
{
 struct sta_info *psta_bmc;
 struct sta_xmit_priv *pstaxmitpriv;
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 pstaxmitpriv = &psta->sta_xmitpriv;


 psta_bmc = rtw_get_bcmc_stainfo(padapter);


 spin_lock_bh(&pxmitpriv->lock);

 psta->state |= WIFI_SLEEP_STATE;

 pstapriv->sta_dz_bitmap |= BIT(psta->aid);



 dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->vo_q.sta_pending);
 list_del_init(&(pstaxmitpriv->vo_q.tx_pending));


 dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->vi_q.sta_pending);
 list_del_init(&(pstaxmitpriv->vi_q.tx_pending));


 dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->be_q.sta_pending);
 list_del_init(&(pstaxmitpriv->be_q.tx_pending));


 dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->bk_q.sta_pending);
 list_del_init(&(pstaxmitpriv->bk_q.tx_pending));


 pstaxmitpriv = &psta_bmc->sta_xmitpriv;
 dequeue_xmitframes_to_sleeping_queue(padapter, psta_bmc, &pstaxmitpriv->be_q.sta_pending);
 list_del_init(&(pstaxmitpriv->be_q.tx_pending));

 spin_unlock_bh(&pxmitpriv->lock);
}
