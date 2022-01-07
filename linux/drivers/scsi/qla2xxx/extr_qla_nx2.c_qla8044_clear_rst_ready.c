
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {TYPE_1__* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_7__ {int portnum; } ;


 int QLA8044_CRB_DRV_STATE_INDEX ;
 int ql_dbg (int ,TYPE_2__*,int,char*,int) ;
 int ql_dbg_p3p ;
 int qla8044_rd_direct (TYPE_2__*,int ) ;
 int qla8044_wr_direct (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
qla8044_clear_rst_ready(scsi_qla_host_t *vha)
{
 uint32_t drv_state;

 drv_state = qla8044_rd_direct(vha, QLA8044_CRB_DRV_STATE_INDEX);






 drv_state &= ~(1 << vha->hw->portnum);

 ql_dbg(ql_dbg_p3p, vha, 0xb13d,
     "drv_state: 0x%08x\n", drv_state);
 qla8044_wr_direct(vha, QLA8044_CRB_DRV_STATE_INDEX, drv_state);
}
