
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_local_port {struct fcloop_lport_priv* private; } ;
struct fcloop_lport_priv {struct fcloop_lport* lport; } ;
struct fcloop_lport {int unreg_done; } ;


 int complete (int *) ;

__attribute__((used)) static void
fcloop_localport_delete(struct nvme_fc_local_port *localport)
{
 struct fcloop_lport_priv *lport_priv = localport->private;
 struct fcloop_lport *lport = lport_priv->lport;


 complete(&lport->unreg_done);
}
