
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {int handle_timeout_work; struct uwb_rc* rc; int timer; int kref; int pal_node; int rc_node; } ;
struct uwb_rc {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int kref_init (int *) ;
 struct uwb_rsv* kzalloc (int,int ) ;
 int timer_setup (int *,int ,int ) ;
 int uwb_rsv_handle_timeout_work ;
 int uwb_rsv_timer ;

__attribute__((used)) static struct uwb_rsv *uwb_rsv_alloc(struct uwb_rc *rc)
{
 struct uwb_rsv *rsv;

 rsv = kzalloc(sizeof(struct uwb_rsv), GFP_KERNEL);
 if (!rsv)
  return ((void*)0);

 INIT_LIST_HEAD(&rsv->rc_node);
 INIT_LIST_HEAD(&rsv->pal_node);
 kref_init(&rsv->kref);
 timer_setup(&rsv->timer, uwb_rsv_timer, 0);

 rsv->rc = rc;
 INIT_WORK(&rsv->handle_timeout_work, uwb_rsv_handle_timeout_work);

 return rsv;
}
