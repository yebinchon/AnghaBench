
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvmet_req {TYPE_3__* ns; TYPE_2__* cmd; } ;
struct TYPE_6__ {int blksize_shift; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_5__ {TYPE_1__ rw; } ;


 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static inline u32 nvmet_rw_len(struct nvmet_req *req)
{
 return ((u32)le16_to_cpu(req->cmd->rw.length) + 1) <<
   req->ns->blksize_shift;
}
