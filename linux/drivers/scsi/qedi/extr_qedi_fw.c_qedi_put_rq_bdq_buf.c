
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {void* opaque; scalar_t__* reserved_zero; } ;
struct TYPE_8__ {TYPE_3__ iscsi_opaque; } ;
struct TYPE_6__ {void* lo; void* hi; } ;
struct scsi_bd {TYPE_4__ opaque; TYPE_2__ address; } ;
struct qedi_ctx {int bdq_prod_idx; int rq_num_entries; int bdq_secondary_prod; int bdq_primary_prod; int dbg_ctx; TYPE_1__* bdq; scalar_t__ bdq_pbl; } ;
struct iscsi_cqe_unsolicited {int rqe_opaque; } ;
struct TYPE_5__ {int buf_dma; } ;


 int QEDI_BDQ_NUM ;
 int QEDI_INFO (int *,int ,char*,...) ;
 int QEDI_LOG_CONN ;
 int QEDI_U64_HI (int ) ;
 int QEDI_U64_LO (int ) ;
 void* cpu_to_le32 (int) ;
 int readw (int ) ;
 int writew (int,int ) ;

__attribute__((used)) static void qedi_put_rq_bdq_buf(struct qedi_ctx *qedi,
    struct iscsi_cqe_unsolicited *cqe,
    int count)
{
 u16 tmp;
 u16 idx = 0;
 struct scsi_bd *pbl;


 idx = cqe->rqe_opaque;
 if (idx > (QEDI_BDQ_NUM - 1)) {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
     "wrong idx %d returned by FW, dropping the unsolicited pkt\n",
     idx);
  return;
 }

 pbl = (struct scsi_bd *)qedi->bdq_pbl;
 pbl += (qedi->bdq_prod_idx % qedi->rq_num_entries);
 pbl->address.hi = cpu_to_le32(QEDI_U64_HI(qedi->bdq[idx].buf_dma));
 pbl->address.lo = cpu_to_le32(QEDI_U64_LO(qedi->bdq[idx].buf_dma));
 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
    "pbl [0x%p] pbl->address hi [0x%llx] lo [0x%llx] idx [%d]\n",
    pbl, pbl->address.hi, pbl->address.lo, idx);
 pbl->opaque.iscsi_opaque.reserved_zero[0] = 0;
 pbl->opaque.iscsi_opaque.reserved_zero[1] = 0;
 pbl->opaque.iscsi_opaque.reserved_zero[2] = 0;
 pbl->opaque.iscsi_opaque.opaque = cpu_to_le32(idx);


 qedi->bdq_prod_idx += count;

 writew(qedi->bdq_prod_idx, qedi->bdq_primary_prod);
 tmp = readw(qedi->bdq_primary_prod);

 writew(qedi->bdq_prod_idx, qedi->bdq_secondary_prod);
 tmp = readw(qedi->bdq_secondary_prod);
}
