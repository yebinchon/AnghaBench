
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qedi_endpoint {scalar_t__ sq_prod_idx; int fw_sq_prod_idx; } ;
struct qedi_conn {struct qedi_endpoint* ep; } ;


 scalar_t__ QEDI_SQ_SIZE ;

__attribute__((used)) static u16 qedi_get_wqe_idx(struct qedi_conn *qedi_conn)
{
 struct qedi_endpoint *ep;
 u16 rval;

 ep = qedi_conn->ep;
 rval = ep->sq_prod_idx;


 ep->sq_prod_idx++;
 ep->fw_sq_prod_idx++;
 if (ep->sq_prod_idx == QEDI_SQ_SIZE)
  ep->sq_prod_idx = 0;

 return rval;
}
