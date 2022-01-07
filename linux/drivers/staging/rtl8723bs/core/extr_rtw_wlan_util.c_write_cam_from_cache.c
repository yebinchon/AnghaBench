
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct cam_ctl_t {int lock; } ;
struct dvobj_priv {int * cam_cache; struct cam_ctl_t cam_ctl; } ;
struct cam_entry_cache {int key; int mac; int ctrl; } ;
struct adapter {int dummy; } ;


 int _write_cam (struct adapter*,size_t,int ,int ,int ) ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int memcpy (struct cam_entry_cache*,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

inline void write_cam_from_cache(struct adapter *adapter, u8 id)
{
 struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
 struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;
 struct cam_entry_cache cache;

 spin_lock_bh(&cam_ctl->lock);
 memcpy(&cache, &dvobj->cam_cache[id], sizeof(struct cam_entry_cache));
 spin_unlock_bh(&cam_ctl->lock);

 _write_cam(adapter, id, cache.ctrl, cache.mac, cache.key);
}
