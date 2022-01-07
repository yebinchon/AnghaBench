
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cam_ctl_t {int lock; } ;
struct dvobj_priv {struct cam_ctl_t cam_ctl; } ;
struct adapter {int dummy; } ;
typedef int s16 ;


 int _rtw_camid_search (struct adapter*,int *,int) ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

s16 rtw_camid_search(struct adapter *adapter, u8 *addr, s16 kid)
{
 struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
 struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;
 s16 cam_id = -1;

 spin_lock_bh(&cam_ctl->lock);
 cam_id = _rtw_camid_search(adapter, addr, kid);
 spin_unlock_bh(&cam_ctl->lock);

 return cam_id;
}
