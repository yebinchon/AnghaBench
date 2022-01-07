
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ctl_t {int lock; scalar_t__ bitmap; } ;
struct dvobj_priv {int cam_cache; struct cam_ctl_t cam_ctl; } ;
struct cam_entry_cache {int dummy; } ;
struct adapter {int dummy; } ;


 int HW_VAR_CAM_INVALID_ALL ;
 int TOTAL_CAM_ENTRY ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int memset (int ,int ,int) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void invalidate_cam_all(struct adapter *padapter)
{
 struct dvobj_priv *dvobj = adapter_to_dvobj(padapter);
 struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;

 rtw_hal_set_hwreg(padapter, HW_VAR_CAM_INVALID_ALL, ((void*)0));

 spin_lock_bh(&cam_ctl->lock);
 cam_ctl->bitmap = 0;
 memset(dvobj->cam_cache, 0, sizeof(struct cam_entry_cache)*TOTAL_CAM_ENTRY);
 spin_unlock_bh(&cam_ctl->lock);
}
