
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {TYPE_4__* ms_iocb; } ;
struct ct_entry_24xx {void* cmd_byte_count; TYPE_1__* dsd; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_7__ {void* length; } ;
struct TYPE_9__ {void* req_bytecount; TYPE_2__ req_dsd; } ;
typedef TYPE_4__ ms_iocb_entry_t ;
struct TYPE_6__ {void* length; } ;


 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void
qla2x00_update_ms_fdmi_iocb(scsi_qla_host_t *vha, uint32_t req_size)
{
 struct qla_hw_data *ha = vha->hw;
 ms_iocb_entry_t *ms_pkt = ha->ms_iocb;
 struct ct_entry_24xx *ct_pkt = (struct ct_entry_24xx *)ha->ms_iocb;

 if (IS_FWI2_CAPABLE(ha)) {
  ct_pkt->cmd_byte_count = cpu_to_le32(req_size);
  ct_pkt->dsd[0].length = ct_pkt->cmd_byte_count;
 } else {
  ms_pkt->req_bytecount = cpu_to_le32(req_size);
  ms_pkt->req_dsd.length = ms_pkt->req_bytecount;
 }
}
