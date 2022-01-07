
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ctx {scalar_t__ fipvlan_retries; scalar_t__ vlan_id; int fipvlan_compl; int dbg_ctx; int ctlr; int link_state; int flags; } ;


 int HZ ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_INFO (int *,int ,char*,scalar_t__) ;
 scalar_t__ QEDF_LINK_DOWN ;
 scalar_t__ QEDF_LINK_UP ;
 int QEDF_LOG_DISC ;
 int QEDF_UNLOADING ;
 scalar_t__ atomic_read (int *) ;
 int fcoe_ctlr_link_up (int *) ;
 int init_completion (int *) ;
 int qedf_fcoe_send_vlan_req (struct qedf_ctx*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static bool qedf_initiate_fipvlan_req(struct qedf_ctx *qedf)
{

 while (qedf->fipvlan_retries--) {

  if (atomic_read(&qedf->link_state) == QEDF_LINK_DOWN) {
   QEDF_ERR(&qedf->dbg_ctx, "Link not up.\n");
   return 0;
  }

  if (test_bit(QEDF_UNLOADING, &qedf->flags)) {
   QEDF_ERR(&qedf->dbg_ctx, "Driver unloading.\n");
   return 0;
  }

  if (qedf->vlan_id > 0) {
   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
      "vlan = 0x%x already set, calling ctlr_link_up.\n",
      qedf->vlan_id);
   if (atomic_read(&qedf->link_state) == QEDF_LINK_UP)
    fcoe_ctlr_link_up(&qedf->ctlr);
   return 1;
  }

  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
      "Retry %d.\n", qedf->fipvlan_retries);
  init_completion(&qedf->fipvlan_compl);
  qedf_fcoe_send_vlan_req(qedf);
  wait_for_completion_timeout(&qedf->fipvlan_compl, 1 * HZ);
 }

 return 0;
}
