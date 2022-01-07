
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_rport {int lport; } ;
struct nvme_fc_remote_port {int dummy; } ;


 int nvme_fc_signal_discovery_scan (int ,struct nvme_fc_rport*) ;
 struct nvme_fc_rport* remoteport_to_rport (struct nvme_fc_remote_port*) ;

void
nvme_fc_rescan_remoteport(struct nvme_fc_remote_port *remoteport)
{
 struct nvme_fc_rport *rport = remoteport_to_rport(remoteport);

 nvme_fc_signal_discovery_scan(rport->lport, rport);
}
