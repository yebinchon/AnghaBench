
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvmet_req {TYPE_4__* cmd; TYPE_2__* cq; TYPE_1__* sq; } ;
struct nvmet_ns {int device_path; } ;
struct nvmet_ctrl {int dummy; } ;
struct TYPE_7__ {int nsid; } ;
struct TYPE_8__ {TYPE_3__ rw; } ;
struct TYPE_6__ {scalar_t__ qid; } ;
struct TYPE_5__ {scalar_t__ qid; } ;


 int DISK_NAME_LEN ;
 int memset (char*,int ,int ) ;
 struct nvmet_ns* nvmet_find_namespace (struct nvmet_ctrl*,int ) ;
 struct nvmet_ctrl* nvmet_req_to_ctrl (struct nvmet_req*) ;
 int strncpy (char*,int ,int ) ;

__attribute__((used)) static inline void __assign_disk_name(char *name, struct nvmet_req *req,
  bool init)
{
 struct nvmet_ctrl *ctrl = nvmet_req_to_ctrl(req);
 struct nvmet_ns *ns;

 if ((init && req->sq->qid) || (!init && req->cq->qid)) {
  ns = nvmet_find_namespace(ctrl, req->cmd->rw.nsid);
  strncpy(name, ns->device_path, DISK_NAME_LEN);
  return;
 }

 memset(name, 0, DISK_NAME_LEN);
}
