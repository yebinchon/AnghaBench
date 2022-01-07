
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_transport_qp {int client_ready; int link_work; TYPE_1__* transport; } ;
struct TYPE_2__ {scalar_t__ link_is_up; } ;


 int schedule_delayed_work (int *,int ) ;

void ntb_transport_link_up(struct ntb_transport_qp *qp)
{
 if (!qp)
  return;

 qp->client_ready = 1;

 if (qp->transport->link_is_up)
  schedule_delayed_work(&qp->link_work, 0);
}
