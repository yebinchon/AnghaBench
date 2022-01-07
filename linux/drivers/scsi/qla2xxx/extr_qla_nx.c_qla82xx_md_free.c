
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qla_hw_data {int md_template_size; int md_dump_size; int * md_dump; int * md_tmplt_hdr; int md_tmplt_hdr_dma; TYPE_1__* pdev; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_5__ {int dev; } ;


 int dma_free_coherent (int *,int,int *,int ) ;
 int ql_log (int ,TYPE_2__*,int,char*,int *,int) ;
 int ql_log_info ;
 int vfree (int *) ;

void
qla82xx_md_free(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;


 if (ha->md_tmplt_hdr) {
  ql_log(ql_log_info, vha, 0xb048,
      "Free MiniDump template: %p, size (%d KB)\n",
      ha->md_tmplt_hdr, ha->md_template_size / 1024);
  dma_free_coherent(&ha->pdev->dev, ha->md_template_size,
      ha->md_tmplt_hdr, ha->md_tmplt_hdr_dma);
  ha->md_tmplt_hdr = ((void*)0);
 }


 if (ha->md_dump) {
  ql_log(ql_log_info, vha, 0xb049,
      "Free MiniDump memory: %p, size (%d KB)\n",
      ha->md_dump, ha->md_dump_size / 1024);
  vfree(ha->md_dump);
  ha->md_dump_size = 0;
  ha->md_dump = ((void*)0);
 }
}
