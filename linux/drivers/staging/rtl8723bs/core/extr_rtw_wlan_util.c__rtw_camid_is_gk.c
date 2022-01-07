
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct cam_ctl_t {int bitmap; } ;
struct dvobj_priv {TYPE_1__* cam_cache; struct cam_ctl_t cam_ctl; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int ctrl; } ;


 int BIT (size_t) ;
 int BIT6 ;
 size_t TOTAL_CAM_ENTRY ;
 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;

__attribute__((used)) static bool _rtw_camid_is_gk(struct adapter *adapter, u8 cam_id)
{
 struct dvobj_priv *dvobj = adapter_to_dvobj(adapter);
 struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;
 bool ret = 0;

 if (cam_id >= TOTAL_CAM_ENTRY)
  goto exit;

 if (!(cam_ctl->bitmap & BIT(cam_id)))
  goto exit;

 ret = (dvobj->cam_cache[cam_id].ctrl&BIT6)?1:0;

exit:
 return ret;
}
