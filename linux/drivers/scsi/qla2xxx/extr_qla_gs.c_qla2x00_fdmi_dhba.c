
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct qla_hw_data {int ms_iocb_dma; int ms_iocb; TYPE_7__* ct_sns; TYPE_1__* isp_ops; } ;
struct ct_sns_rsp {int dummy; } ;
struct TYPE_14__ {int port_name; } ;
struct TYPE_15__ {TYPE_3__ dhba; } ;
struct ct_sns_req {TYPE_4__ req; } ;
struct TYPE_16__ {int port_name; struct qla_hw_data* hw; } ;
typedef TYPE_5__ scsi_qla_host_t ;
typedef int ms_iocb_entry_t ;
struct TYPE_13__ {struct ct_sns_rsp rsp; } ;
struct TYPE_17__ {TYPE_2__ p; } ;
struct TYPE_12__ {int * (* prep_ms_fdmi_iocb ) (TYPE_5__*,int ,int ) ;} ;


 int DHBA_CMD ;
 int DHBA_REQ_SIZE ;
 int DHBA_RSP_SIZE ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int WWN_SIZE ;
 int memcpy (int ,int ,int ) ;
 int ql_dbg (int ,TYPE_5__*,int,char*,...) ;
 int ql_dbg_disc ;
 int qla2x00_chk_ms_status (TYPE_5__*,int *,struct ct_sns_rsp*,char*) ;
 int qla2x00_issue_iocb (TYPE_5__*,int ,int ,int) ;
 struct ct_sns_req* qla2x00_prep_ct_fdmi_req (TYPE_7__*,int ,int ) ;
 int * stub1 (TYPE_5__*,int ,int ) ;

__attribute__((used)) static int
qla2x00_fdmi_dhba(scsi_qla_host_t *vha)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;
 ms_iocb_entry_t *ms_pkt;
 struct ct_sns_req *ct_req;
 struct ct_sns_rsp *ct_rsp;



 ms_pkt = ha->isp_ops->prep_ms_fdmi_iocb(vha, DHBA_REQ_SIZE,
     DHBA_RSP_SIZE);


 ct_req = qla2x00_prep_ct_fdmi_req(ha->ct_sns, DHBA_CMD, DHBA_RSP_SIZE);
 ct_rsp = &ha->ct_sns->p.rsp;


 memcpy(ct_req->req.dhba.port_name, vha->port_name, WWN_SIZE);

 ql_dbg(ql_dbg_disc, vha, 0x2036,
     "DHBA portname = %8phN.\n", ct_req->req.dhba.port_name);


 rval = qla2x00_issue_iocb(vha, ha->ms_iocb, ha->ms_iocb_dma,
     sizeof(ms_iocb_entry_t));
 if (rval != QLA_SUCCESS) {

  ql_dbg(ql_dbg_disc, vha, 0x2037,
      "DHBA issue IOCB failed (%d).\n", rval);
 } else if (qla2x00_chk_ms_status(vha, ms_pkt, ct_rsp, "DHBA") !=
     QLA_SUCCESS) {
  rval = QLA_FUNCTION_FAILED;
 } else {
  ql_dbg(ql_dbg_disc, vha, 0x2038,
      "DHBA exiting normally.\n");
 }

 return rval;
}
