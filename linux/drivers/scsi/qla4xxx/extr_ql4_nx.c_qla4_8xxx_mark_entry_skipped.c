
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {int fw_dump_skip_size; int host_no; } ;
struct TYPE_2__ {int entry_capture_mask; int driver_flags; } ;
struct qla8xxx_minidump_entry_hdr {scalar_t__ entry_capture_size; TYPE_1__ d_ctrl; int entry_type; } ;


 int DEBUG2 (int ) ;
 int KERN_INFO ;
 int QLA8XXX_DBG_SKIPPED_FLAG ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,int ,int,int ,int ) ;

__attribute__((used)) static void qla4_8xxx_mark_entry_skipped(struct scsi_qla_host *ha,
    struct qla8xxx_minidump_entry_hdr *entry_hdr,
    int index)
{
 entry_hdr->d_ctrl.driver_flags |= QLA8XXX_DBG_SKIPPED_FLAG;
 DEBUG2(ql4_printk(KERN_INFO, ha,
     "scsi(%ld): Skipping entry[%d]: ETYPE[0x%x]-ELEVEL[0x%x]\n",
     ha->host_no, index, entry_hdr->entry_type,
     entry_hdr->d_ctrl.entry_capture_mask));




 ha->fw_dump_skip_size += entry_hdr->entry_capture_size;
}
