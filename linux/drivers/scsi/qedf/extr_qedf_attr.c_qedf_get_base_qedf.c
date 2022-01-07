
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ctx {struct fc_lport* lport; } ;
struct fc_lport {int vport; } ;


 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 int qedf_is_vport (struct qedf_ctx*) ;
 struct fc_lport* shost_priv (int ) ;
 int vport_to_shost (int ) ;

__attribute__((used)) static struct qedf_ctx *qedf_get_base_qedf(struct qedf_ctx *qedf)
{
 struct fc_lport *lport;
 struct fc_lport *base_lport;

 if (!(qedf_is_vport(qedf)))
  return ((void*)0);

 lport = qedf->lport;
 base_lport = shost_priv(vport_to_shost(lport->vport));
 return lport_priv(base_lport);
}
