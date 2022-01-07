
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {int host_no; } ;
struct TYPE_2__ {int entry_capture_mask; int driver_flags; } ;
struct qla8044_minidump_entry_hdr {TYPE_1__ d_ctrl; int entry_type; } ;


 int QLA82XX_DBG_SKIPPED_FLAG ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int ,int,int ,int ) ;
 int ql_log_info ;

__attribute__((used)) static void
qla8044_mark_entry_skipped(struct scsi_qla_host *vha,
 struct qla8044_minidump_entry_hdr *entry_hdr, int index)
{
 entry_hdr->d_ctrl.driver_flags |= QLA82XX_DBG_SKIPPED_FLAG;

 ql_log(ql_log_info, vha, 0xb0f7,
     "scsi(%ld): Skipping entry[%d]: ETYPE[0x%x]-ELEVEL[0x%x]\n",
     vha->host_no, index, entry_hdr->entry_type,
     entry_hdr->d_ctrl.entry_capture_mask);
}
