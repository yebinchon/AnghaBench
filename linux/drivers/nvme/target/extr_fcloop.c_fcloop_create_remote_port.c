
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_fc_remote_port {struct fcloop_rport* private; } ;
struct nvme_fc_port_info {int port_id; int port_role; int port_name; int node_name; } ;
struct fcloop_rport {TYPE_2__* lport; struct fcloop_nport* nport; int * targetport; struct nvme_fc_remote_port* remoteport; } ;
struct fcloop_nport {struct fcloop_rport* rport; TYPE_2__* lport; TYPE_1__* tport; int port_id; int port_role; int port_name; int node_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int pinfo ;
struct TYPE_4__ {int localport; } ;
struct TYPE_3__ {TYPE_2__* lport; struct nvme_fc_remote_port* remoteport; int * targetport; } ;


 int EIO ;
 struct fcloop_nport* fcloop_alloc_nport (char const*,size_t,int) ;
 int fcloop_nport_put (struct fcloop_nport*) ;
 int memset (struct nvme_fc_port_info*,int ,int) ;
 int nvme_fc_register_remoteport (int ,struct nvme_fc_port_info*,struct nvme_fc_remote_port**) ;

__attribute__((used)) static ssize_t
fcloop_create_remote_port(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct nvme_fc_remote_port *remoteport;
 struct fcloop_nport *nport;
 struct fcloop_rport *rport;
 struct nvme_fc_port_info pinfo;
 int ret;

 nport = fcloop_alloc_nport(buf, count, 1);
 if (!nport)
  return -EIO;

 memset(&pinfo, 0, sizeof(pinfo));
 pinfo.node_name = nport->node_name;
 pinfo.port_name = nport->port_name;
 pinfo.port_role = nport->port_role;
 pinfo.port_id = nport->port_id;

 ret = nvme_fc_register_remoteport(nport->lport->localport,
      &pinfo, &remoteport);
 if (ret || !remoteport) {
  fcloop_nport_put(nport);
  return ret;
 }


 rport = remoteport->private;
 rport->remoteport = remoteport;
 rport->targetport = (nport->tport) ? nport->tport->targetport : ((void*)0);
 if (nport->tport) {
  nport->tport->remoteport = remoteport;
  nport->tport->lport = nport->lport;
 }
 rport->nport = nport;
 rport->lport = nport->lport;
 nport->rport = rport;

 return count;
}
