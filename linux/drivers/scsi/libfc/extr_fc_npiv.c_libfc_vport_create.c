
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {struct fc_lport* dd_data; } ;
struct fc_lport {int lp_mutex; int vports; int list; struct fc_vport* vport; } ;
struct Scsi_Host {int hostt; } ;


 struct fc_lport* libfc_host_alloc (int ,int) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 struct Scsi_Host* vport_to_shost (struct fc_vport*) ;

struct fc_lport *libfc_vport_create(struct fc_vport *vport, int privsize)
{
 struct Scsi_Host *shost = vport_to_shost(vport);
 struct fc_lport *n_port = shost_priv(shost);
 struct fc_lport *vn_port;

 vn_port = libfc_host_alloc(shost->hostt, privsize);
 if (!vn_port)
  return vn_port;

 vn_port->vport = vport;
 vport->dd_data = vn_port;

 mutex_lock(&n_port->lp_mutex);
 list_add_tail(&vn_port->list, &n_port->vports);
 mutex_unlock(&n_port->lp_mutex);

 return vn_port;
}
