
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {int dummy; } ;
struct timer_list {int dummy; } ;
struct host_if_msg {int dummy; } ;
struct host_if_drv {struct wilc_vif* scan_timer_vif; } ;


 scalar_t__ IS_ERR (struct host_if_msg*) ;
 struct host_if_drv* from_timer (int ,struct timer_list*,int ) ;
 int handle_scan_timer ;
 struct host_if_drv* hif_drv ;
 int kfree (struct host_if_msg*) ;
 int scan_timer ;
 struct host_if_msg* wilc_alloc_work (struct wilc_vif*,int ,int) ;
 int wilc_enqueue_work (struct host_if_msg*) ;

__attribute__((used)) static void timer_scan_cb(struct timer_list *t)
{
 struct host_if_drv *hif_drv = from_timer(hif_drv, t, scan_timer);
 struct wilc_vif *vif = hif_drv->scan_timer_vif;
 struct host_if_msg *msg;
 int result;

 msg = wilc_alloc_work(vif, handle_scan_timer, 0);
 if (IS_ERR(msg))
  return;

 result = wilc_enqueue_work(msg);
 if (result)
  kfree(msg);
}
