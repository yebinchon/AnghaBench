
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct cam_ctl_t {int lock; } ;
struct dvobj_priv {int * cam_cache; struct cam_ctl_t cam_ctl; } ;
struct cam_entry_cache {int dummy; } ;
struct adapter {int dummy; } ;


 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int memset (int *,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void clear_cam_cache(struct adapter *adapter, u8 id)
{
 struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
 struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;

 spin_lock_bh(&cam_ctl->lock);

 memset(&(dvobj->cam_cache[id]), 0, sizeof(struct cam_entry_cache));

 spin_unlock_bh(&cam_ctl->lock);
}
