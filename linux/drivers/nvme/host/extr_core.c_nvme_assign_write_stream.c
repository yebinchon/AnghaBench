
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct request {int write_hint; TYPE_1__* q; } ;
struct nvme_ctrl {int nr_streams; } ;
typedef enum rw_hint { ____Placeholder_rw_hint } rw_hint ;
struct TYPE_2__ {int* write_hints; } ;


 int ARRAY_SIZE (int*) ;
 int NVME_RW_DTYPE_STREAMS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WRITE_LIFE_NONE ;
 int WRITE_LIFE_NOT_SET ;
 int blk_rq_bytes (struct request*) ;

__attribute__((used)) static void nvme_assign_write_stream(struct nvme_ctrl *ctrl,
         struct request *req, u16 *control,
         u32 *dsmgmt)
{
 enum rw_hint streamid = req->write_hint;

 if (streamid == WRITE_LIFE_NOT_SET || streamid == WRITE_LIFE_NONE)
  streamid = 0;
 else {
  streamid--;
  if (WARN_ON_ONCE(streamid > ctrl->nr_streams))
   return;

  *control |= NVME_RW_DTYPE_STREAMS;
  *dsmgmt |= streamid << 16;
 }

 if (streamid < ARRAY_SIZE(req->q->write_hints))
  req->q->write_hints[streamid] += blk_rq_bytes(req) >> 9;
}
