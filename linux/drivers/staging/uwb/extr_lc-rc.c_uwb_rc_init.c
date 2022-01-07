
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mutex; int list; } ;
struct TYPE_5__ {int mutex; int list; } ;
struct TYPE_4__ {int release; int * class; } ;
struct uwb_dev {TYPE_1__ dev; } ;
struct uwb_rc {int beaconing; TYPE_3__ uwb_beca; TYPE_2__ notifs_chain; int scan_type; struct uwb_dev uwb_dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int UWB_SCAN_DISABLED ;
 int mutex_init (int *) ;
 int uwb_dev_init (struct uwb_dev*) ;
 int uwb_drp_avail_init (struct uwb_rc*) ;
 int uwb_rc_class ;
 int uwb_rc_ie_init (struct uwb_rc*) ;
 int uwb_rc_neh_create (struct uwb_rc*) ;
 int uwb_rc_pal_init (struct uwb_rc*) ;
 int uwb_rc_sys_release ;
 int uwb_rsv_init (struct uwb_rc*) ;

void uwb_rc_init(struct uwb_rc *rc)
{
 struct uwb_dev *uwb_dev = &rc->uwb_dev;

 uwb_dev_init(uwb_dev);
 rc->uwb_dev.dev.class = &uwb_rc_class;
 rc->uwb_dev.dev.release = uwb_rc_sys_release;
 uwb_rc_neh_create(rc);
 rc->beaconing = -1;
 rc->scan_type = UWB_SCAN_DISABLED;
 INIT_LIST_HEAD(&rc->notifs_chain.list);
 mutex_init(&rc->notifs_chain.mutex);
 INIT_LIST_HEAD(&rc->uwb_beca.list);
 mutex_init(&rc->uwb_beca.mutex);
 uwb_drp_avail_init(rc);
 uwb_rc_ie_init(rc);
 uwb_rsv_init(rc);
 uwb_rc_pal_init(rc);
}
