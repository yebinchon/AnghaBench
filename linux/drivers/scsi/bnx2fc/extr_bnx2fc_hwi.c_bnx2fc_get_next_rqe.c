
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2fc_rport {int rq_cons_idx; scalar_t__ rq; } ;


 int BNX2FC_RQ_BUF_SZ ;
 int BNX2FC_RQ_WQES_MAX ;

char *bnx2fc_get_next_rqe(struct bnx2fc_rport *tgt, u8 num_items)
{
 char *buf = (char *)tgt->rq + (tgt->rq_cons_idx * BNX2FC_RQ_BUF_SZ);

 if (tgt->rq_cons_idx + num_items > BNX2FC_RQ_WQES_MAX)
  return ((void*)0);

 tgt->rq_cons_idx += num_items;

 if (tgt->rq_cons_idx >= BNX2FC_RQ_WQES_MAX)
  tgt->rq_cons_idx -= BNX2FC_RQ_WQES_MAX;

 return buf;
}
