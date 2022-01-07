
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct qla_hw_data {int md_template_size; int md_dump_size; int * md_tmplt_hdr; int md_tmplt_hdr_dma; TYPE_1__* pdev; } ;
struct TYPE_11__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_10__ {int dev; } ;


 scalar_t__ IS_QLA8044 (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int ql_dbg (int ,TYPE_2__*,int,char*) ;
 int ql_dbg_p3p ;
 int ql_log (int ,TYPE_2__*,int,char*,int,...) ;
 int ql_log_info ;
 int qla8044_md_get_template (TYPE_2__*) ;
 int qla82xx_md_alloc (TYPE_2__*) ;
 int qla82xx_md_get_template (TYPE_2__*) ;
 int qla82xx_md_get_template_size (TYPE_2__*) ;

void
qla82xx_md_prep(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 int rval;


 rval = qla82xx_md_get_template_size(vha);
 if (rval == QLA_SUCCESS) {
  ql_log(ql_log_info, vha, 0xb04a,
      "MiniDump Template size obtained (%d KB)\n",
      ha->md_template_size / 1024);


  if (IS_QLA8044(ha))
   rval = qla8044_md_get_template(vha);
  else
   rval = qla82xx_md_get_template(vha);

  if (rval == QLA_SUCCESS) {
   ql_dbg(ql_dbg_p3p, vha, 0xb04b,
       "MiniDump Template obtained\n");


   rval = qla82xx_md_alloc(vha);
   if (rval == QLA_SUCCESS)
    ql_log(ql_log_info, vha, 0xb04c,
        "MiniDump memory allocated (%d KB)\n",
        ha->md_dump_size / 1024);
   else {
    ql_log(ql_log_info, vha, 0xb04d,
        "Free MiniDump template: %p, size: (%d KB)\n",
        ha->md_tmplt_hdr,
        ha->md_template_size / 1024);
    dma_free_coherent(&ha->pdev->dev,
        ha->md_template_size,
        ha->md_tmplt_hdr, ha->md_tmplt_hdr_dma);
    ha->md_tmplt_hdr = ((void*)0);
   }

  }
 }
}
