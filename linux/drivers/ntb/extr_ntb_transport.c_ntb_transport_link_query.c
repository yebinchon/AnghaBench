
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int link_is_up; } ;



bool ntb_transport_link_query(struct ntb_transport_qp *qp)
{
 if (!qp)
  return 0;

 return qp->link_is_up;
}
