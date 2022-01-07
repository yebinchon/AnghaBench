
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int rsv_workq; } ;


 int destroy_workqueue (int ) ;
 int uwb_rsv_remove_all (struct uwb_rc*) ;

void uwb_rsv_cleanup(struct uwb_rc *rc)
{
 uwb_rsv_remove_all(rc);
 destroy_workqueue(rc->rsv_workq);
}
