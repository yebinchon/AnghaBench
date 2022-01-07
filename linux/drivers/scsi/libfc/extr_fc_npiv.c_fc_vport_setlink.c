
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {int dummy; } ;
struct fc_lport {int lp_mutex; struct fc_vport* vport; } ;
struct Scsi_Host {int dummy; } ;


 int LPORT_MUTEX_VN_PORT ;
 int __fc_vport_setlink (struct fc_lport*,struct fc_lport*) ;
 int mutex_lock (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 struct Scsi_Host* vport_to_shost (struct fc_vport*) ;

void fc_vport_setlink(struct fc_lport *vn_port)
{
 struct fc_vport *vport = vn_port->vport;
 struct Scsi_Host *shost = vport_to_shost(vport);
 struct fc_lport *n_port = shost_priv(shost);

 mutex_lock(&n_port->lp_mutex);
 mutex_lock_nested(&vn_port->lp_mutex, LPORT_MUTEX_VN_PORT);
 __fc_vport_setlink(n_port, vn_port);
 mutex_unlock(&vn_port->lp_mutex);
 mutex_unlock(&n_port->lp_mutex);
}
