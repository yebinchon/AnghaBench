
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ctx {int link_update; int link_update_wq; scalar_t__ vlan_id; int link_down_tmo_valid; int dbg_ctx; int dcbx; int link_state; int link_recovery; int flags; } ;
struct qed_link_output {int speed; scalar_t__ link_up; } ;


 int HZ ;
 scalar_t__ QEDF_DCBX_DONE ;
 int QEDF_DCBX_PENDING ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*) ;
 int QEDF_LINK_DOWN ;
 scalar_t__ QEDF_LINK_UP ;
 int QEDF_LOG_DISC ;
 int QEDF_UNLOADING ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int cancel_delayed_work (int *) ;
 scalar_t__ qedf_dcbx_no_wait ;
 int qedf_link_down_tmo ;
 int qedf_update_link_speed (struct qedf_ctx*,struct qed_link_output*) ;
 int queue_delayed_work (int ,int *,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void qedf_link_update(void *dev, struct qed_link_output *link)
{
 struct qedf_ctx *qedf = (struct qedf_ctx *)dev;





 if (test_bit(QEDF_UNLOADING, &qedf->flags)) {
  QEDF_ERR(&qedf->dbg_ctx,
    "Ignore link update, driver getting unload.\n");
  return;
 }

 if (link->link_up) {
  if (atomic_read(&qedf->link_state) == QEDF_LINK_UP) {
   QEDF_INFO((&qedf->dbg_ctx), QEDF_LOG_DISC,
       "Ignoring link up event as link is already up.\n");
   return;
  }
  QEDF_ERR(&(qedf->dbg_ctx), "LINK UP (%d GB/s).\n",
      link->speed / 1000);


  cancel_delayed_work(&qedf->link_update);

  atomic_set(&qedf->link_state, QEDF_LINK_UP);
  qedf_update_link_speed(qedf, link);

  if (atomic_read(&qedf->dcbx) == QEDF_DCBX_DONE ||
      qedf_dcbx_no_wait) {
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
        "DCBx done.\n");
   if (atomic_read(&qedf->link_down_tmo_valid) > 0)
    queue_delayed_work(qedf->link_update_wq,
        &qedf->link_recovery, 0);
   else
    queue_delayed_work(qedf->link_update_wq,
        &qedf->link_update, 0);
   atomic_set(&qedf->link_down_tmo_valid, 0);
  }

 } else {
  QEDF_ERR(&(qedf->dbg_ctx), "LINK DOWN.\n");

  atomic_set(&qedf->link_state, QEDF_LINK_DOWN);
  atomic_set(&qedf->dcbx, QEDF_DCBX_PENDING);




  if (qedf_link_down_tmo > 0) {
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
       "Starting link down tmo.\n");
   atomic_set(&qedf->link_down_tmo_valid, 1);
  }
  qedf->vlan_id = 0;
  qedf_update_link_speed(qedf, link);
  queue_delayed_work(qedf->link_update_wq, &qedf->link_update,
      qedf_link_down_tmo * HZ);
 }
}
