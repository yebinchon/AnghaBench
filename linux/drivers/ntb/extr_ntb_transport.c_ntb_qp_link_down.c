
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int link_cleanup; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void ntb_qp_link_down(struct ntb_transport_qp *qp)
{
 schedule_work(&qp->link_cleanup);
}
