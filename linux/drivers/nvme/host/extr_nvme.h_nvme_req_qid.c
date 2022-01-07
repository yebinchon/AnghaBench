
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct request {int rq_disk; } ;


 int blk_mq_unique_tag (struct request*) ;
 scalar_t__ blk_mq_unique_tag_to_hwq (int ) ;

__attribute__((used)) static inline u16 nvme_req_qid(struct request *req)
{
 if (!req->rq_disk)
  return 0;
 return blk_mq_unique_tag_to_hwq(blk_mq_unique_tag(req)) + 1;
}
