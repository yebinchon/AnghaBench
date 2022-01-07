
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_bssid_ex {int dummy; } ;
struct __queue {int lock; } ;
struct mlme_priv {struct __queue scanned_queue; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_current_network (struct _adapter*,struct wlan_bssid_ex*) ;
 int update_scanned_network (struct _adapter*,struct wlan_bssid_ex*) ;

__attribute__((used)) static void rtl8711_add_network(struct _adapter *adapter,
    struct wlan_bssid_ex *pnetwork)
{
 unsigned long irqL;
 struct mlme_priv *pmlmepriv = &(((struct _adapter *)adapter)->mlmepriv);
 struct __queue *queue = &pmlmepriv->scanned_queue;

 spin_lock_irqsave(&queue->lock, irqL);
 update_current_network(adapter, pnetwork);
 update_scanned_network(adapter, pnetwork);
 spin_unlock_irqrestore(&queue->lock, irqL);
}
