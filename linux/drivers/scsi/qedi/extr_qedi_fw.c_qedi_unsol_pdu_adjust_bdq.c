
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qedi_ctx {int dbg_ctx; } ;
struct iscsi_cqe_unsolicited {int dummy; } ;


 int QEDI_INFO (int *,int ,char*,scalar_t__) ;
 int QEDI_LOG_CONN ;
 int qedi_get_rq_bdq_buf (struct qedi_ctx*,struct iscsi_cqe_unsolicited*,char*,scalar_t__) ;
 int qedi_put_rq_bdq_buf (struct qedi_ctx*,struct iscsi_cqe_unsolicited*,scalar_t__) ;

__attribute__((used)) static void qedi_unsol_pdu_adjust_bdq(struct qedi_ctx *qedi,
          struct iscsi_cqe_unsolicited *cqe,
          u32 pdu_len, u32 num_bdqs,
          char *bdq_data)
{
 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
    "num_bdqs [%d]\n", num_bdqs);

 qedi_get_rq_bdq_buf(qedi, cqe, bdq_data, pdu_len);
 qedi_put_rq_bdq_buf(qedi, cqe, (num_bdqs + 1));
}
