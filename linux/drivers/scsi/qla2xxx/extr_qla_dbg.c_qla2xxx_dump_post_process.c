
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct qla_hw_data {int fw_dumped; int fw_dump_cap_flags; int fw_dump; } ;
struct TYPE_5__ {int host_no; struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLA_SUCCESS ;
 int QLA_UEVENT_CODE_FW_DUMP ;
 int ql_log (int ,TYPE_1__*,int,char*,int,int ,...) ;
 int ql_log_info ;
 int ql_log_warn ;
 int qla2x00_post_uevent_work (TYPE_1__*,int ) ;

void
qla2xxx_dump_post_process(scsi_qla_host_t *vha, int rval)
{
 struct qla_hw_data *ha = vha->hw;

 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0xd000,
      "Failed to dump firmware (%x), dump status flags (0x%lx).\n",
      rval, ha->fw_dump_cap_flags);
  ha->fw_dumped = 0;
 } else {
  ql_log(ql_log_info, vha, 0xd001,
      "Firmware dump saved to temp buffer (%ld/%p), dump status flags (0x%lx).\n",
      vha->host_no, ha->fw_dump, ha->fw_dump_cap_flags);
  ha->fw_dumped = 1;
  qla2x00_post_uevent_work(vha, QLA_UEVENT_CODE_FW_DUMP);
 }
}
