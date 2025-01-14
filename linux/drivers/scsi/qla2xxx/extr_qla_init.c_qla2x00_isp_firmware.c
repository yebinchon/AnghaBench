
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_8__ {scalar_t__ disable_risc_code_load; } ;
struct qla_hw_data {int fw_srisc_address; TYPE_1__ flags; } ;
struct TYPE_9__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int ql_dbg (int ,TYPE_2__*,int,char*) ;
 int ql_dbg_init ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_info ;
 int qla2x00_get_adapter_id (TYPE_2__*,int *,int *,int *,int *,int *,int *) ;
 int qla2x00_verify_checksum (TYPE_2__*,int ) ;

__attribute__((used)) static int
qla2x00_isp_firmware(scsi_qla_host_t *vha)
{
 int rval;
 uint16_t loop_id, topo, sw_cap;
 uint8_t domain, area, al_pa;
 struct qla_hw_data *ha = vha->hw;


 rval = QLA_FUNCTION_FAILED;

 if (ha->flags.disable_risc_code_load) {
  ql_log(ql_log_info, vha, 0x0079, "RISC CODE NOT loaded.\n");


  rval = qla2x00_verify_checksum(vha, ha->fw_srisc_address);
  if (rval == QLA_SUCCESS) {

   rval = qla2x00_get_adapter_id(vha, &loop_id, &al_pa,
       &area, &domain, &topo, &sw_cap);
  }
 }

 if (rval)
  ql_dbg(ql_dbg_init, vha, 0x007a,
      "**** Load RISC code ****.\n");

 return (rval);
}
