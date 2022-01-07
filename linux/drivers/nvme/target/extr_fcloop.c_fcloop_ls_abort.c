
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmefc_ls_req {int dummy; } ;
struct nvme_fc_remote_port {int dummy; } ;
struct nvme_fc_local_port {int dummy; } ;



__attribute__((used)) static void
fcloop_ls_abort(struct nvme_fc_local_port *localport,
   struct nvme_fc_remote_port *remoteport,
    struct nvmefc_ls_req *lsreq)
{
}
