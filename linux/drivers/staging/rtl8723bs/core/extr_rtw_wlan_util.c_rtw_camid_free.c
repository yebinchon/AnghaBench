
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cam_ctl_t {int lock; int bitmap; } ;
struct dvobj_priv {struct cam_ctl_t cam_ctl; } ;
struct adapter {int dummy; } ;


 int BIT (scalar_t__) ;
 scalar_t__ TOTAL_CAM_ENTRY ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_camid_free(struct adapter *adapter, u8 cam_id)
{
 struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
 struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;

 spin_lock_bh(&cam_ctl->lock);

 if (cam_id < TOTAL_CAM_ENTRY)
  cam_ctl->bitmap &= ~(BIT(cam_id));

 spin_unlock_bh(&cam_ctl->lock);
}
