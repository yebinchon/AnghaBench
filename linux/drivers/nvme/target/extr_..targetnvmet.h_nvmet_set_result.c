
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvmet_req {TYPE_2__* cqe; } ;
struct TYPE_3__ {int u32; } ;
struct TYPE_4__ {TYPE_1__ result; } ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void nvmet_set_result(struct nvmet_req *req, u32 result)
{
 req->cqe->result.u32 = cpu_to_le32(result);
}
