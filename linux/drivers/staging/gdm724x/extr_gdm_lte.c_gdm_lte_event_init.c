
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ref_cnt; scalar_t__ sock; } ;


 int ENODATA ;
 int NETLINK_LTE ;
 int gdm_lte_event_rcv ;
 TYPE_1__ lte_event ;
 scalar_t__ netlink_init (int ,int ) ;
 int pr_err (char*) ;

int gdm_lte_event_init(void)
{
 if (lte_event.ref_cnt == 0)
  lte_event.sock = netlink_init(NETLINK_LTE, gdm_lte_event_rcv);

 if (lte_event.sock) {
  lte_event.ref_cnt++;
  return 0;
 }

 pr_err("event init failed\n");
 return -ENODATA;
}
