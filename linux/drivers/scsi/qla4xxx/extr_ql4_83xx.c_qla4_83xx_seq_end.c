
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seq_end; } ;
struct scsi_qla_host {TYPE_1__ reset_tmplt; } ;
struct qla4_83xx_reset_entry_hdr {int dummy; } ;



__attribute__((used)) static void qla4_83xx_seq_end(struct scsi_qla_host *ha,
         struct qla4_83xx_reset_entry_hdr *p_hdr)
{
 ha->reset_tmplt.seq_end = 1;
}
