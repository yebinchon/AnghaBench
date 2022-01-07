
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipaddr {int dummy; } ;
struct qeth_card {int dummy; } ;




 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int qeth_l3_modify_ip (struct qeth_card*,struct qeth_ipaddr*,int) ;

__attribute__((used)) static int qeth_l3_handle_ip_event(struct qeth_card *card,
       struct qeth_ipaddr *addr,
       unsigned long event)
{
 switch (event) {
 case 128:
  qeth_l3_modify_ip(card, addr, 1);
  return NOTIFY_OK;
 case 129:
  qeth_l3_modify_ip(card, addr, 0);
  return NOTIFY_OK;
 default:
  return NOTIFY_DONE;
 }
}
