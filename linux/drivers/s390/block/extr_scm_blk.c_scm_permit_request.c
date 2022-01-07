
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_blk_dev {scalar_t__ state; } ;
struct request {int dummy; } ;


 scalar_t__ SCM_WR_PROHIBIT ;
 scalar_t__ WRITE ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static bool scm_permit_request(struct scm_blk_dev *bdev, struct request *req)
{
 return rq_data_dir(req) != WRITE || bdev->state != SCM_WR_PROHIBIT;
}
