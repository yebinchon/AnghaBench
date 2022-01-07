
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
typedef int blk_status_t ;



__attribute__((used)) static inline void nvme_trace_bio_complete(struct request *req,
        blk_status_t status)
{
}
