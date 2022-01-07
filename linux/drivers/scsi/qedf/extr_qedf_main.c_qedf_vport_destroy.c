
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ctx {int flags; } ;
struct fc_vport {struct fc_lport* dd_data; } ;
struct fc_lport {scalar_t__ state; scalar_t__ host; int lp_mutex; int list; } ;
struct Scsi_Host {int dummy; } ;


 scalar_t__ LPORT_ST_READY ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_UNLOADING ;
 int fc_exch_mgr_free (struct fc_lport*) ;
 int fc_fabric_logoff (struct fc_lport*) ;
 int fc_lport_destroy (struct fc_lport*) ;
 int fc_lport_free_stats (struct fc_lport*) ;
 int fc_remove_host (scalar_t__) ;
 int list_del (int *) ;
 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_host_put (scalar_t__) ;
 int scsi_remove_host (scalar_t__) ;
 int set_bit (int ,int *) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 struct Scsi_Host* vport_to_shost (struct fc_vport*) ;

__attribute__((used)) static int qedf_vport_destroy(struct fc_vport *vport)
{
 struct Scsi_Host *shost = vport_to_shost(vport);
 struct fc_lport *n_port = shost_priv(shost);
 struct fc_lport *vn_port = vport->dd_data;
 struct qedf_ctx *qedf = lport_priv(vn_port);

 if (!qedf) {
  QEDF_ERR(((void*)0), "qedf is NULL.\n");
  goto out;
 }


 set_bit(QEDF_UNLOADING, &qedf->flags);

 mutex_lock(&n_port->lp_mutex);
 list_del(&vn_port->list);
 mutex_unlock(&n_port->lp_mutex);

 fc_fabric_logoff(vn_port);
 fc_lport_destroy(vn_port);


 fc_remove_host(vn_port->host);
 scsi_remove_host(vn_port->host);





 if (vn_port->state == LPORT_ST_READY)
  fc_exch_mgr_free(vn_port);


 fc_lport_free_stats(vn_port);


 if (vn_port->host)
  scsi_host_put(vn_port->host);

out:
 return 0;
}
