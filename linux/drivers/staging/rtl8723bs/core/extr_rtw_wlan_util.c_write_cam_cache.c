
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct cam_ctl_t {int lock; } ;
struct dvobj_priv {TYPE_1__* cam_cache; struct cam_ctl_t cam_ctl; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int key; int mac; int ctrl; } ;


 int ETH_ALEN ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int memcpy (int ,size_t*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void write_cam_cache(struct adapter *adapter, u8 id, u16 ctrl, u8 *mac, u8 *key)
{
 struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
 struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;

 spin_lock_bh(&cam_ctl->lock);

 dvobj->cam_cache[id].ctrl = ctrl;
 memcpy(dvobj->cam_cache[id].mac, mac, ETH_ALEN);
 memcpy(dvobj->cam_cache[id].key, key, 16);

 spin_unlock_bh(&cam_ctl->lock);
}
