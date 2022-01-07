
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nvmet_req {TYPE_4__* sq; TYPE_2__* cmd; } ;
struct TYPE_8__ {TYPE_3__* ctrl; } ;
struct TYPE_7__ {int kato; } ;
struct TYPE_5__ {int cdw11; } ;
struct TYPE_6__ {TYPE_1__ common; } ;


 int DIV_ROUND_UP (int ,int) ;
 int le32_to_cpu (int ) ;
 int nvmet_set_result (struct nvmet_req*,int ) ;

u16 nvmet_set_feat_kato(struct nvmet_req *req)
{
 u32 val32 = le32_to_cpu(req->cmd->common.cdw11);

 req->sq->ctrl->kato = DIV_ROUND_UP(val32, 1000);

 nvmet_set_result(req, req->sq->ctrl->kato);

 return 0;
}
