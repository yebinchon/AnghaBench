
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qedi_conn {int iscsi_conn_id; TYPE_2__* ep; TYPE_1__* qedi; } ;
struct iscsi_db_data {int params; int sq_prod; scalar_t__ agg_flags; int member_0; } ;
struct TYPE_4__ {int fw_sq_prod_idx; int sq_prod_idx; int p_doorbell; } ;
struct TYPE_3__ {int dbg_ctx; } ;


 int DB_AGG_CMD_SET ;
 int DB_DEST_XCM ;
 int DQ_XCM_ISCSI_SQ_PROD_CMD ;
 int ISCSI_DB_DATA_AGG_CMD_SHIFT ;
 int ISCSI_DB_DATA_AGG_VAL_SEL_SHIFT ;
 int ISCSI_DB_DATA_DEST_SHIFT ;
 int QEDI_INFO (int *,int ,char*,int ,int ,int ) ;
 int QEDI_LOG_MP_REQ ;
 int wmb () ;
 int writel (int ,int ) ;

__attribute__((used)) static void qedi_ring_doorbell(struct qedi_conn *qedi_conn)
{
 struct iscsi_db_data dbell = { 0 };

 dbell.agg_flags = 0;

 dbell.params |= DB_DEST_XCM << ISCSI_DB_DATA_DEST_SHIFT;
 dbell.params |= DB_AGG_CMD_SET << ISCSI_DB_DATA_AGG_CMD_SHIFT;
 dbell.params |=
     DQ_XCM_ISCSI_SQ_PROD_CMD << ISCSI_DB_DATA_AGG_VAL_SEL_SHIFT;

 dbell.sq_prod = qedi_conn->ep->fw_sq_prod_idx;
 writel(*(u32 *)&dbell, qedi_conn->ep->p_doorbell);





 wmb();
 QEDI_INFO(&qedi_conn->qedi->dbg_ctx, QEDI_LOG_MP_REQ,
    "prod_idx=0x%x, fw_prod_idx=0x%x, cid=0x%x\n",
    qedi_conn->ep->sq_prod_idx, qedi_conn->ep->fw_sq_prod_idx,
    qedi_conn->iscsi_conn_id);
}
