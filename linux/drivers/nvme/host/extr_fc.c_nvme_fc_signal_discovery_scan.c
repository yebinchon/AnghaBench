
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tgtaddr ;
struct TYPE_4__ {int port_role; int port_name; int node_name; } ;
struct nvme_fc_rport {TYPE_1__ remoteport; } ;
struct TYPE_5__ {int port_name; int node_name; } ;
struct nvme_fc_lport {TYPE_2__ localport; } ;
typedef int hostaddr ;
struct TYPE_6__ {int kobj; } ;


 int FCNVME_TRADDR_LENGTH ;
 int FC_PORT_ROLE_NVME_DISCOVERY ;
 int KOBJ_CHANGE ;
 TYPE_3__* fc_udev_device ;
 int kobject_uevent_env (int *,int ,char**) ;
 int snprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static void
nvme_fc_signal_discovery_scan(struct nvme_fc_lport *lport,
  struct nvme_fc_rport *rport)
{
 char hostaddr[FCNVME_TRADDR_LENGTH];
 char tgtaddr[FCNVME_TRADDR_LENGTH];
 char *envp[4] = { "FC_EVENT=nvmediscovery", hostaddr, tgtaddr, ((void*)0) };

 if (!(rport->remoteport.port_role & FC_PORT_ROLE_NVME_DISCOVERY))
  return;

 snprintf(hostaddr, sizeof(hostaddr),
  "NVMEFC_HOST_TRADDR=nn-0x%016llx:pn-0x%016llx",
  lport->localport.node_name, lport->localport.port_name);
 snprintf(tgtaddr, sizeof(tgtaddr),
  "NVMEFC_TRADDR=nn-0x%016llx:pn-0x%016llx",
  rport->remoteport.node_name, rport->remoteport.port_name);
 kobject_uevent_env(&fc_udev_device->kobj, KOBJ_CHANGE, envp);
}
