
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvmet_req {TYPE_2__* sq; TYPE_1__* cqe; } ;
struct TYPE_4__ {int size; int sqhd; } ;
struct TYPE_3__ {int sq_head; } ;


 int cmpxchg (int*,int,int) ;
 int cpu_to_le16 (int) ;

__attribute__((used)) static void nvmet_update_sq_head(struct nvmet_req *req)
{
 if (req->sq->size) {
  u32 old_sqhd, new_sqhd;

  do {
   old_sqhd = req->sq->sqhd;
   new_sqhd = (old_sqhd + 1) % req->sq->size;
  } while (cmpxchg(&req->sq->sqhd, old_sqhd, new_sqhd) !=
     old_sqhd);
 }
 req->cqe->sq_head = cpu_to_le16(req->sq->sqhd & 0x0000FFFF);
}
