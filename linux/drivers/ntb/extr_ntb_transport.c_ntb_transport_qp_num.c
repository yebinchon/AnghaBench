
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {unsigned char qp_num; } ;



unsigned char ntb_transport_qp_num(struct ntb_transport_qp *qp)
{
 if (!qp)
  return 0;

 return qp->qp_num;
}
