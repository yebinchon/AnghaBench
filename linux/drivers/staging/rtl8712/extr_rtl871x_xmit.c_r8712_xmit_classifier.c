
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkt_attrib {int priority; int ra; struct sta_info* psta; } ;
struct xmit_frame {int list; struct pkt_attrib attrib; } ;
struct TYPE_2__ {int queue; } ;
struct tx_servq {int qcnt; TYPE_1__ sta_pending; int tx_pending; } ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
struct __queue {int lock; int queue; } ;


 int EINVAL ;
 int WIFI_MP_STATE ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int get_bssid (struct mlme_priv*) ;
 struct tx_servq* get_sta_pending (struct _adapter*,struct __queue**,struct sta_info*,int ) ;
 int is_multicast_ether_addr (int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 struct sta_info* r8712_get_bcmc_stainfo (struct _adapter*) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int r8712_xmit_classifier(struct _adapter *padapter,
     struct xmit_frame *pxmitframe)
{
 unsigned long irqL0;
 struct __queue *pstapending;
 struct sta_info *psta;
 struct tx_servq *ptxservq;
 struct pkt_attrib *pattrib = &pxmitframe->attrib;
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 bool bmcst = is_multicast_ether_addr(pattrib->ra);

 if (pattrib->psta) {
  psta = pattrib->psta;
 } else {
  if (bmcst) {
   psta = r8712_get_bcmc_stainfo(padapter);
  } else {
   if (check_fwstate(pmlmepriv, WIFI_MP_STATE))
    psta = r8712_get_stainfo(pstapriv,
           get_bssid(pmlmepriv));
   else
    psta = r8712_get_stainfo(pstapriv, pattrib->ra);
  }
 }
 if (psta == ((void*)0))
  return -EINVAL;
 ptxservq = get_sta_pending(padapter, &pstapending,
     psta, pattrib->priority);
 spin_lock_irqsave(&pstapending->lock, irqL0);
 if (list_empty(&ptxservq->tx_pending))
  list_add_tail(&ptxservq->tx_pending, &pstapending->queue);
 list_add_tail(&pxmitframe->list, &ptxservq->sta_pending.queue);
 ptxservq->qcnt++;
 spin_unlock_irqrestore(&pstapending->lock, irqL0);
 return 0;
}
