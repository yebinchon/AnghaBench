
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_led_work; } ;
struct zd_mac {TYPE_1__ housekeeping; } ;


 int dev_dbg_f (int ,char*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int zd_mac_dev (struct zd_mac*) ;
 int zd_workqueue ;

__attribute__((used)) static void housekeeping_enable(struct zd_mac *mac)
{
 dev_dbg_f(zd_mac_dev(mac), "\n");
 queue_delayed_work(zd_workqueue, &mac->housekeeping.link_led_work,
      0);
}
