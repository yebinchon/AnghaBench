
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int used_cnt; scalar_t__ msix_cnt; } ;
struct qedf_ctx {int dbg_ctx; TYPE_2__ int_info; int cdev; } ;
struct TYPE_6__ {TYPE_1__* common; } ;
struct TYPE_4__ {int (* set_fp_int ) (int ,int ) ;int (* get_fp_int ) (int ,TYPE_2__*) ;int (* simd_handler_config ) (int ,struct qedf_ctx**,int ,int ) ;} ;


 int EINVAL ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_INFO (int *,int ,char*,scalar_t__,int ) ;
 int QEDF_LOG_DISC ;
 int QEDF_SIMD_HANDLER_NUM ;
 int num_online_cpus () ;
 TYPE_3__* qed_ops ;
 int qedf_request_msix_irq (struct qedf_ctx*) ;
 int qedf_simd_int_handler ;
 int stub1 (int ,int ) ;
 int stub2 (int ,TYPE_2__*) ;
 int stub3 (int ,struct qedf_ctx**,int ,int ) ;

__attribute__((used)) static int qedf_setup_int(struct qedf_ctx *qedf)
{
 int rc = 0;




 rc = qed_ops->common->set_fp_int(qedf->cdev, num_online_cpus());
 if (rc <= 0)
  return 0;

 rc = qed_ops->common->get_fp_int(qedf->cdev, &qedf->int_info);
 if (rc)
  return 0;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC, "Number of msix_cnt = "
     "0x%x num of cpus = 0x%x\n", qedf->int_info.msix_cnt,
     num_online_cpus());

 if (qedf->int_info.msix_cnt)
  return qedf_request_msix_irq(qedf);

 qed_ops->common->simd_handler_config(qedf->cdev, &qedf,
     QEDF_SIMD_HANDLER_NUM, qedf_simd_int_handler);
 qedf->int_info.used_cnt = 1;

 QEDF_ERR(&qedf->dbg_ctx,
   "Cannot load driver due to a lack of MSI-X vectors.\n");
 return -EINVAL;
}
