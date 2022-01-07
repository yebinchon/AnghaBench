
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct qla8xxx_minidump_entry_hdr {int dummy; } ;


 int QLA_SUCCESS ;
 int __qla4_8xxx_minidump_process_rdmem (struct scsi_qla_host*,struct qla8xxx_minidump_entry_hdr*,int **) ;
 int qla4_8xxx_minidump_pex_dma_read (struct scsi_qla_host*,struct qla8xxx_minidump_entry_hdr*,int **) ;

__attribute__((used)) static int qla4_8xxx_minidump_process_rdmem(struct scsi_qla_host *ha,
    struct qla8xxx_minidump_entry_hdr *entry_hdr,
    uint32_t **d_ptr)
{
 uint32_t *data_ptr = *d_ptr;
 int rval = QLA_SUCCESS;

 rval = qla4_8xxx_minidump_pex_dma_read(ha, entry_hdr, &data_ptr);
 if (rval != QLA_SUCCESS)
  rval = __qla4_8xxx_minidump_process_rdmem(ha, entry_hdr,
         &data_ptr);
 *d_ptr = data_ptr;
 return rval;
}
