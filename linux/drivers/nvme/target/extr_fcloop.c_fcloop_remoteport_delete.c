
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_remote_port {struct fcloop_rport* private; } ;
struct fcloop_rport {int nport; } ;


 int fcloop_nport_put (int ) ;

__attribute__((used)) static void
fcloop_remoteport_delete(struct nvme_fc_remote_port *remoteport)
{
 struct fcloop_rport *rport = remoteport->private;

 fcloop_nport_put(rport->nport);
}
