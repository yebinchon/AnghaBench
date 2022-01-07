
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qedf_ctx {int prio; int link_down_tmo_valid; int link_update; int link_update_wq; int link_recovery; int link_state; int dbg_ctx; int dcbx; } ;
struct TYPE_3__ {int fcoe; } ;
struct TYPE_4__ {TYPE_1__ app_prio; int valid; int enabled; } ;
struct qed_dcbx_get {TYPE_2__ operational; } ;


 scalar_t__ QEDF_DCBX_DONE ;
 int QEDF_DEFAULT_PRIO ;
 int QEDF_ERR (int *,char*,int ,int ,int) ;
 int QEDF_INFO (int *,int ,char*,...) ;
 scalar_t__ QEDF_LINK_UP ;
 int QEDF_LOG_DISC ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 int qedf_dcbx_no_wait ;
 int qedf_default_prio ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void qedf_dcbx_handler(void *dev, struct qed_dcbx_get *get, u32 mib_type)
{
 struct qedf_ctx *qedf = (struct qedf_ctx *)dev;
 u8 tmp_prio;

 QEDF_ERR(&(qedf->dbg_ctx), "DCBx event valid=%d enabled=%d fcoe "
     "prio=%d.\n", get->operational.valid, get->operational.enabled,
     get->operational.app_prio.fcoe);

 if (get->operational.enabled && get->operational.valid) {

  if (atomic_read(&qedf->dcbx) == QEDF_DCBX_DONE) {
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
       "DCBX already set on link up.\n");
   return;
  }

  atomic_set(&qedf->dcbx, QEDF_DCBX_DONE);
  tmp_prio = get->operational.app_prio.fcoe;
  if (qedf_default_prio > -1)
   qedf->prio = qedf_default_prio;
  else if (tmp_prio > 7) {
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
       "FIP/FCoE prio %d out of range, setting to %d.\n",
       tmp_prio, QEDF_DEFAULT_PRIO);
   qedf->prio = QEDF_DEFAULT_PRIO;
  } else
   qedf->prio = tmp_prio;

  if (atomic_read(&qedf->link_state) == QEDF_LINK_UP &&
      !qedf_dcbx_no_wait) {
   if (atomic_read(&qedf->link_down_tmo_valid) > 0)
    queue_delayed_work(qedf->link_update_wq,
        &qedf->link_recovery, 0);
   else
    queue_delayed_work(qedf->link_update_wq,
        &qedf->link_update, 0);
   atomic_set(&qedf->link_down_tmo_valid, 0);
  }
 }

}
