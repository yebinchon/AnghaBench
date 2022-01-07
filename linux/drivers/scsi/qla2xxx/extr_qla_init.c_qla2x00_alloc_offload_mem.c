
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scsi_qla_host_t ;


 int qla2x00_init_eft_trace (int *) ;
 int qla2x00_init_fce_trace (int *) ;

__attribute__((used)) static void
qla2x00_alloc_offload_mem(scsi_qla_host_t *vha)
{
 qla2x00_init_fce_trace(vha);
 qla2x00_init_eft_trace(vha);
}
