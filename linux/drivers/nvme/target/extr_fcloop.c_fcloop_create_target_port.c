
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_fc_target_port {struct fcloop_tport* private; } ;
struct nvmet_fc_port_info {int port_id; int port_name; int node_name; } ;
struct fcloop_tport {int lport; struct fcloop_nport* nport; int * remoteport; struct nvmet_fc_target_port* targetport; } ;
struct fcloop_nport {struct fcloop_tport* tport; int lport; TYPE_1__* rport; int port_id; int port_name; int node_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct nvmet_fc_target_port* targetport; int * remoteport; } ;


 int EIO ;
 struct fcloop_nport* fcloop_alloc_nport (char const*,size_t,int) ;
 int fcloop_nport_put (struct fcloop_nport*) ;
 int nvmet_fc_register_targetport (struct nvmet_fc_port_info*,int *,int *,struct nvmet_fc_target_port**) ;
 int tgttemplate ;

__attribute__((used)) static ssize_t
fcloop_create_target_port(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct nvmet_fc_target_port *targetport;
 struct fcloop_nport *nport;
 struct fcloop_tport *tport;
 struct nvmet_fc_port_info tinfo;
 int ret;

 nport = fcloop_alloc_nport(buf, count, 0);
 if (!nport)
  return -EIO;

 tinfo.node_name = nport->node_name;
 tinfo.port_name = nport->port_name;
 tinfo.port_id = nport->port_id;

 ret = nvmet_fc_register_targetport(&tinfo, &tgttemplate, ((void*)0),
      &targetport);
 if (ret) {
  fcloop_nport_put(nport);
  return ret;
 }


 tport = targetport->private;
 tport->targetport = targetport;
 tport->remoteport = (nport->rport) ? nport->rport->remoteport : ((void*)0);
 if (nport->rport)
  nport->rport->targetport = targetport;
 tport->nport = nport;
 tport->lport = nport->lport;
 nport->tport = tport;

 return count;
}
