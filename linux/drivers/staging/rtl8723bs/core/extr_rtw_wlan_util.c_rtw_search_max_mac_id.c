
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvobj_priv {int* macid; int lock; } ;
struct adapter {int dummy; } ;


 int NUM_STA ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

u8 rtw_search_max_mac_id(struct adapter *padapter)
{
 u8 max_mac_id = 0;
 struct dvobj_priv *pdvobj = adapter_to_dvobj(padapter);
 int i;
 spin_lock_bh(&pdvobj->lock);
 for (i = (NUM_STA-1); i >= 0 ; i--) {
  if (pdvobj->macid[i] == 1)
   break;
 }
 max_mac_id = i;
 spin_unlock_bh(&pdvobj->lock);

 return max_mac_id;
}
