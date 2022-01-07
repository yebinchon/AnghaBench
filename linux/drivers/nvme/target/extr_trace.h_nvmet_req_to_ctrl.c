
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_req {TYPE_1__* sq; } ;
struct nvmet_ctrl {int dummy; } ;
struct TYPE_2__ {struct nvmet_ctrl* ctrl; } ;



__attribute__((used)) static inline struct nvmet_ctrl *nvmet_req_to_ctrl(struct nvmet_req *req)
{
 return req->sq->ctrl;
}
