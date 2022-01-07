
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {struct uwb_rsv* rsv; scalar_t__ cluster_id; struct uwb_rc* uwb_rc; } ;
struct uwb_dev_addr {scalar_t__* data; } ;
struct TYPE_2__ {struct uwb_dev_addr devaddr; int type; } ;
struct uwb_rsv {int max_mas; int min_mas; int max_interval; int is_multicast; int type; TYPE_1__ target; } ;
struct uwb_rc {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int UWB_DRP_TYPE_PRIVATE ;
 int UWB_RSV_TARGET_DEVADDR ;
 struct uwb_rsv* uwb_rsv_create (struct uwb_rc*,int ,struct wusbhc*) ;
 int uwb_rsv_destroy (struct uwb_rsv*) ;
 int uwb_rsv_establish (struct uwb_rsv*) ;
 int wusbhc_rsv_complete_cb ;

int wusbhc_rsv_establish(struct wusbhc *wusbhc)
{
 struct uwb_rc *rc = wusbhc->uwb_rc;
 struct uwb_rsv *rsv;
 struct uwb_dev_addr bcid;
 int ret;

 if (rc == ((void*)0))
  return -ENODEV;

 rsv = uwb_rsv_create(rc, wusbhc_rsv_complete_cb, wusbhc);
 if (rsv == ((void*)0))
  return -ENOMEM;

 bcid.data[0] = wusbhc->cluster_id;
 bcid.data[1] = 0;

 rsv->target.type = UWB_RSV_TARGET_DEVADDR;
 rsv->target.devaddr = bcid;
 rsv->type = UWB_DRP_TYPE_PRIVATE;
 rsv->max_mas = 256;
 rsv->min_mas = 15;
 rsv->max_interval = 1;
 rsv->is_multicast = 1;

 ret = uwb_rsv_establish(rsv);
 if (ret == 0)
  wusbhc->rsv = rsv;
 else
  uwb_rsv_destroy(rsv);
 return ret;
}
