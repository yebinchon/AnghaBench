
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct qla_hw_data {scalar_t__ exlogin_size; int exlogin_buf_dma; TYPE_5__* pdev; int exlogin_buf; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;
struct TYPE_8__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_EXLOGIN_OFFLD_CAPABLE (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int dma_alloc_coherent (int *,scalar_t__,int *,int ) ;
 scalar_t__ ql2xexlogins ;
 int ql_log (int ,TYPE_1__*,int,char*,...) ;
 int ql_log_fatal ;
 int ql_log_info ;
 int ql_log_pci (int ,TYPE_5__*,int,char*) ;
 int qla2x00_free_exlogin_buffer (struct qla_hw_data*) ;
 int qla_get_exlogin_status (TYPE_1__*,scalar_t__*,scalar_t__*) ;
 int qla_set_exlogin_mem_cfg (TYPE_1__*,int ) ;

int
qla2x00_set_exlogins_buffer(scsi_qla_host_t *vha)
{
 int rval;
 uint16_t size, max_cnt, temp;
 struct qla_hw_data *ha = vha->hw;


 if (!ql2xexlogins)
  return QLA_SUCCESS;

 if (!IS_EXLOGIN_OFFLD_CAPABLE(ha))
  return QLA_SUCCESS;

 ql_log(ql_log_info, vha, 0xd021, "EXLOGIN count: %d.\n", ql2xexlogins);
 max_cnt = 0;
 rval = qla_get_exlogin_status(vha, &size, &max_cnt);
 if (rval != QLA_SUCCESS) {
  ql_log_pci(ql_log_fatal, ha->pdev, 0xd029,
      "Failed to get exlogin status.\n");
  return rval;
 }

 temp = (ql2xexlogins > max_cnt) ? max_cnt : ql2xexlogins;
 temp *= size;

 if (temp != ha->exlogin_size) {
  qla2x00_free_exlogin_buffer(ha);
  ha->exlogin_size = temp;

  ql_log(ql_log_info, vha, 0xd024,
      "EXLOGIN: max_logins=%d, portdb=0x%x, total=%d.\n",
      max_cnt, size, temp);

  ql_log(ql_log_info, vha, 0xd025,
      "EXLOGIN: requested size=0x%x\n", ha->exlogin_size);


  ha->exlogin_buf = dma_alloc_coherent(&ha->pdev->dev,
   ha->exlogin_size, &ha->exlogin_buf_dma, GFP_KERNEL);
  if (!ha->exlogin_buf) {
   ql_log_pci(ql_log_fatal, ha->pdev, 0xd02a,
      "Failed to allocate memory for exlogin_buf_dma.\n");
   return -ENOMEM;
  }
 }


 rval = qla_set_exlogin_mem_cfg(vha, ha->exlogin_buf_dma);
 if (rval) {
  ql_log(ql_log_fatal, vha, 0xd033,
      "Setup extended login buffer  ****FAILED****.\n");
  qla2x00_free_exlogin_buffer(ha);
 }

 return rval;
}
