
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scsi_qla_host_t ;
typedef int dma_addr_t ;


 int MBX_TOV_SECONDS ;
 int qla2x00_issue_iocb_timeout (int *,void*,int ,size_t,int ) ;

int
qla2x00_issue_iocb(scsi_qla_host_t *vha, void *buffer, dma_addr_t phys_addr,
    size_t size)
{
 return qla2x00_issue_iocb_timeout(vha, buffer, phys_addr, size,
     MBX_TOV_SECONDS);
}
