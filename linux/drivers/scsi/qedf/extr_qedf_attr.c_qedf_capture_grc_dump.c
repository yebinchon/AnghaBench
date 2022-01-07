
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedf_ctx {TYPE_1__* lport; int flags; int dbg_ctx; int grcdump_size; int grcdump; int cdev; } ;
struct TYPE_4__ {int common; } ;
struct TYPE_3__ {int host; } ;


 int QEDF_ERR (int *,char*) ;
 int QEDF_GRCDUMP_CAPTURE ;
 int QEDF_INFO (int *,int ,char*) ;
 int QEDF_LOG_INFO ;
 int QEDF_UEVENT_CODE_GRCDUMP ;
 TYPE_2__* qed_ops ;
 struct qedf_ctx* qedf_get_base_qedf (struct qedf_ctx*) ;
 int qedf_get_grc_dump (int ,int ,int *,int *) ;
 scalar_t__ qedf_is_vport (struct qedf_ctx*) ;
 int qedf_uevent_emit (int ,int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void qedf_capture_grc_dump(struct qedf_ctx *qedf)
{
 struct qedf_ctx *base_qedf;


 if (qedf_is_vport(qedf))
  base_qedf = qedf_get_base_qedf(qedf);
 else
  base_qedf = qedf;

 if (test_bit(QEDF_GRCDUMP_CAPTURE, &base_qedf->flags)) {
  QEDF_INFO(&(base_qedf->dbg_ctx), QEDF_LOG_INFO,
      "GRC Dump already captured.\n");
  return;
 }


 qedf_get_grc_dump(base_qedf->cdev, qed_ops->common,
     &base_qedf->grcdump, &base_qedf->grcdump_size);
 QEDF_ERR(&(base_qedf->dbg_ctx), "GRC Dump captured.\n");
 set_bit(QEDF_GRCDUMP_CAPTURE, &base_qedf->flags);
 qedf_uevent_emit(base_qedf->lport->host, QEDF_UEVENT_CODE_GRCDUMP,
     ((void*)0));
}
