
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qedf_rport {int p_doorbell; int fw_sq_prod_idx; } ;
struct fcoe_db_data {int params; int sq_prod; scalar_t__ agg_flags; int member_0; } ;


 int DB_AGG_CMD_SET ;
 int DB_DEST_XCM ;
 int DQ_XCM_FCOE_SQ_PROD_CMD ;
 int FCOE_DB_DATA_AGG_CMD_SHIFT ;
 int FCOE_DB_DATA_AGG_VAL_SEL_SHIFT ;
 int FCOE_DB_DATA_DEST_SHIFT ;
 int barrier () ;
 int wmb () ;
 int writel (int ,int ) ;

void qedf_ring_doorbell(struct qedf_rport *fcport)
{
 struct fcoe_db_data dbell = { 0 };

 dbell.agg_flags = 0;

 dbell.params |= DB_DEST_XCM << FCOE_DB_DATA_DEST_SHIFT;
 dbell.params |= DB_AGG_CMD_SET << FCOE_DB_DATA_AGG_CMD_SHIFT;
 dbell.params |= DQ_XCM_FCOE_SQ_PROD_CMD <<
     FCOE_DB_DATA_AGG_VAL_SEL_SHIFT;

 dbell.sq_prod = fcport->fw_sq_prod_idx;



 wmb();
 barrier();
 writel(*(u32 *)&dbell, fcport->p_doorbell);





 wmb();
}
