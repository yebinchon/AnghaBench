
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct hp_sw_dh_data* handler_data; } ;
struct request {int rq_flags; } ;
struct hp_sw_dh_data {scalar_t__ path_state; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 scalar_t__ HP_SW_PATH_ACTIVE ;
 int RQF_QUIET ;

__attribute__((used)) static blk_status_t hp_sw_prep_fn(struct scsi_device *sdev, struct request *req)
{
 struct hp_sw_dh_data *h = sdev->handler_data;

 if (h->path_state != HP_SW_PATH_ACTIVE) {
  req->rq_flags |= RQF_QUIET;
  return BLK_STS_IOERR;
 }

 return BLK_STS_OK;
}
