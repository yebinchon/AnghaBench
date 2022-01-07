
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct esas2r_sg_context {int dummy; } ;
struct esas2r_request {TYPE_2__* vrq; } ;
struct esas2r_adapter {int (* build_sgl ) (struct esas2r_adapter*,struct esas2r_sg_context*) ;} ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {TYPE_1__ scsi; } ;


 scalar_t__ le32_to_cpu (int ) ;
 int stub1 (struct esas2r_adapter*,struct esas2r_sg_context*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool esas2r_build_sg_list(struct esas2r_adapter *a,
     struct esas2r_request *rq,
     struct esas2r_sg_context *sgc)
{
 if (unlikely(le32_to_cpu(rq->vrq->scsi.length) == 0))
  return 1;

 return (*a->build_sgl)(a, sgc);
}
