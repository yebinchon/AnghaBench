
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_target_port {struct fcloop_tport* private; } ;
struct fcloop_tport {int nport; } ;


 int fcloop_nport_put (int ) ;

__attribute__((used)) static void
fcloop_targetport_delete(struct nvmet_fc_target_port *targetport)
{
 struct fcloop_tport *tport = targetport->private;

 fcloop_nport_put(tport->nport);
}
