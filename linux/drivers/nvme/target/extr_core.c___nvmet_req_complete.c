
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct nvmet_req {TYPE_3__* ops; scalar_t__ ns; TYPE_2__* cmd; TYPE_4__* cqe; TYPE_5__* sq; } ;
struct TYPE_10__ {int qid; int sqhd_disabled; } ;
struct TYPE_9__ {int command_id; int sq_id; } ;
struct TYPE_8__ {int (* queue_response ) (struct nvmet_req*) ;} ;
struct TYPE_6__ {int command_id; } ;
struct TYPE_7__ {TYPE_1__ common; } ;


 int cpu_to_le16 (int ) ;
 int nvmet_put_namespace (scalar_t__) ;
 int nvmet_set_error (struct nvmet_req*,int ) ;
 int nvmet_update_sq_head (struct nvmet_req*) ;
 int stub1 (struct nvmet_req*) ;
 int trace_nvmet_req_complete (struct nvmet_req*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void __nvmet_req_complete(struct nvmet_req *req, u16 status)
{
 if (!req->sq->sqhd_disabled)
  nvmet_update_sq_head(req);
 req->cqe->sq_id = cpu_to_le16(req->sq->qid);
 req->cqe->command_id = req->cmd->common.command_id;

 if (unlikely(status))
  nvmet_set_error(req, status);

 trace_nvmet_req_complete(req);

 if (req->ns)
  nvmet_put_namespace(req->ns);
 req->ops->queue_response(req);
}
