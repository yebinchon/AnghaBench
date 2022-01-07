
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {int data; } ;
typedef TYPE_1__ sts_cont_entry_t ;
struct scsi_qla_host {int dummy; } ;
struct scsi_cmnd {int result; } ;
struct rsp_que {TYPE_2__* status_srb; struct qla_hw_data* hw; } ;
struct qla_hw_data {int pdev; } ;
struct TYPE_12__ {int (* done ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ srb_t ;


 int GET_CMD_SENSE_LEN (TYPE_2__*) ;
 int* GET_CMD_SENSE_PTR (TYPE_2__*) ;
 struct scsi_cmnd* GET_CMD_SP (TYPE_2__*) ;
 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int SET_CMD_SENSE_LEN (TYPE_2__*,int) ;
 int SET_CMD_SENSE_PTR (TYPE_2__*,int*) ;
 int host_to_fcp_swap (int ,int) ;
 int memcpy (int*,int ,int) ;
 struct scsi_qla_host* pci_get_drvdata (int ) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_io ;
 int ql_dump_buffer (scalar_t__,struct scsi_qla_host*,int,int*,int) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,TYPE_2__*) ;
 int ql_log_warn ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void
qla2x00_status_cont_entry(struct rsp_que *rsp, sts_cont_entry_t *pkt)
{
 uint8_t sense_sz = 0;
 struct qla_hw_data *ha = rsp->hw;
 struct scsi_qla_host *vha = pci_get_drvdata(ha->pdev);
 srb_t *sp = rsp->status_srb;
 struct scsi_cmnd *cp;
 uint32_t sense_len;
 uint8_t *sense_ptr;

 if (!sp || !GET_CMD_SENSE_LEN(sp))
  return;

 sense_len = GET_CMD_SENSE_LEN(sp);
 sense_ptr = GET_CMD_SENSE_PTR(sp);

 cp = GET_CMD_SP(sp);
 if (cp == ((void*)0)) {
  ql_log(ql_log_warn, vha, 0x3025,
      "cmd is NULL: already returned to OS (sp=%p).\n", sp);

  rsp->status_srb = ((void*)0);
  return;
 }

 if (sense_len > sizeof(pkt->data))
  sense_sz = sizeof(pkt->data);
 else
  sense_sz = sense_len;


 if (IS_FWI2_CAPABLE(ha))
  host_to_fcp_swap(pkt->data, sizeof(pkt->data));
 memcpy(sense_ptr, pkt->data, sense_sz);
 ql_dump_buffer(ql_dbg_io + ql_dbg_buffer, vha, 0x302c,
  sense_ptr, sense_sz);

 sense_len -= sense_sz;
 sense_ptr += sense_sz;

 SET_CMD_SENSE_PTR(sp, sense_ptr);
 SET_CMD_SENSE_LEN(sp, sense_len);


 if (sense_len == 0) {
  rsp->status_srb = ((void*)0);
  sp->done(sp, cp->result);
 }
}
