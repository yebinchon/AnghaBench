
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedf_ctx {int flags; int cdev; int dbg_ctx; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* drain ) (int ) ;} ;


 int QEDF_DRAIN_ACTIVE ;
 int QEDF_ERR (int *,char*) ;
 int clear_bit (int ,int *) ;
 int msleep (int) ;
 TYPE_2__* qed_ops ;
 int set_bit (int ,int *) ;
 int stub1 (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void qedf_drain_request(struct qedf_ctx *qedf)
{
 if (test_bit(QEDF_DRAIN_ACTIVE, &qedf->flags)) {
  QEDF_ERR(&(qedf->dbg_ctx), "MCP drain already active.\n");
  return;
 }


 set_bit(QEDF_DRAIN_ACTIVE, &qedf->flags);


 qed_ops->common->drain(qedf->cdev);


 msleep(100);


 clear_bit(QEDF_DRAIN_ACTIVE, &qedf->flags);
}
