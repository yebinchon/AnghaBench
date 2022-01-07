
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct mlme_priv {TYPE_1__ scanned_queue; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int rtw_free_assoc_resources_locked (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_free_assoc_resources(struct adapter *adapter)
{
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

 spin_lock_bh(&pmlmepriv->scanned_queue.lock);
 rtw_free_assoc_resources_locked(adapter);
 spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
}
