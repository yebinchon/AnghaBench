
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int used_cnt; scalar_t__ msix_cnt; } ;
struct qedi_ctx {TYPE_2__ int_info; int cdev; int dbg_ctx; } ;
struct TYPE_6__ {TYPE_1__* common; } ;
struct TYPE_4__ {int (* set_fp_int ) (int ,int ) ;int (* get_fp_int ) (int ,TYPE_2__*) ;int (* simd_handler_config ) (int ,struct qedi_ctx**,int ,int ) ;} ;


 int QEDI_INFO (int *,int ,char*,scalar_t__,int ) ;
 int QEDI_LOG_DISC ;
 int QEDI_SIMD_HANDLER_NUM ;
 int num_online_cpus () ;
 TYPE_3__* qedi_ops ;
 int qedi_request_msix_irq (struct qedi_ctx*) ;
 int qedi_simd_int_handler ;
 int stub1 (int ,int ) ;
 int stub2 (int ,TYPE_2__*) ;
 int stub3 (int ,struct qedi_ctx**,int ,int ) ;

__attribute__((used)) static int qedi_setup_int(struct qedi_ctx *qedi)
{
 int rc = 0;

 rc = qedi_ops->common->set_fp_int(qedi->cdev, num_online_cpus());
 rc = qedi_ops->common->get_fp_int(qedi->cdev, &qedi->int_info);
 if (rc)
  goto exit_setup_int;

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_DISC,
    "Number of msix_cnt = 0x%x num of cpus = 0x%x\n",
     qedi->int_info.msix_cnt, num_online_cpus());

 if (qedi->int_info.msix_cnt) {
  rc = qedi_request_msix_irq(qedi);
  goto exit_setup_int;
 } else {
  qedi_ops->common->simd_handler_config(qedi->cdev, &qedi,
            QEDI_SIMD_HANDLER_NUM,
            qedi_simd_int_handler);
  qedi->int_info.used_cnt = 1;
 }

exit_setup_int:
 return rc;
}
