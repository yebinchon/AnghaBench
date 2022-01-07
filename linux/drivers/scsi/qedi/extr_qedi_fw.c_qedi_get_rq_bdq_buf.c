
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qedi_ctx {int bdq_prod_idx; int rq_num_entries; TYPE_1__* bdq; int dbg_ctx; } ;
struct iscsi_cqe_unsolicited {int rqe_opaque; int unsol_cqe_type; } ;
struct TYPE_2__ {scalar_t__ buf_addr; } ;






 int QEDI_BDQ_NUM ;
 int QEDI_INFO (int *,int ,char*,int,...) ;
 int QEDI_LOG_CONN ;
 int memcpy (char*,void*,int) ;

__attribute__((used)) static void qedi_get_rq_bdq_buf(struct qedi_ctx *qedi,
    struct iscsi_cqe_unsolicited *cqe,
    char *ptr, int len)
{
 u16 idx = 0;

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
    "pld_len [%d], bdq_prod_idx [%d], idx [%d]\n",
    len, qedi->bdq_prod_idx,
    (qedi->bdq_prod_idx % qedi->rq_num_entries));


 idx = cqe->rqe_opaque;
 if (idx > (QEDI_BDQ_NUM - 1)) {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
     "wrong idx %d returned by FW, dropping the unsolicited pkt\n",
     idx);
  return;
 }

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
    "rqe_opaque [0x%p], idx [%d]\n", cqe->rqe_opaque, idx);

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
    "unsol_cqe_type = %d\n", cqe->unsol_cqe_type);
 switch (cqe->unsol_cqe_type) {
 case 128:
 case 131:
  if (len)
   memcpy(ptr, (void *)qedi->bdq[idx].buf_addr, len);
  break;
 case 129:
 case 130:
  break;
 default:
  break;
 }
}
