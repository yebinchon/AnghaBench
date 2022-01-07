
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pci_channel_io_perm_failure; } ;
struct qla_hw_data {TYPE_2__* isp_ops; TYPE_1__ flags; int pdev; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_7__ {int (* disable_intrs ) (struct qla_hw_data*) ;} ;


 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 scalar_t__ pci_channel_offline (int ) ;
 int qlafx00_soc_cpu_reset (TYPE_3__*) ;
 int stub1 (struct qla_hw_data*) ;
 scalar_t__ unlikely (int) ;

int
qlafx00_soft_reset(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 int rval = QLA_FUNCTION_FAILED;

 if (unlikely(pci_channel_offline(ha->pdev) &&
     ha->flags.pci_channel_io_perm_failure))
  return rval;

 ha->isp_ops->disable_intrs(ha);
 qlafx00_soc_cpu_reset(vha);

 return QLA_SUCCESS;
}
