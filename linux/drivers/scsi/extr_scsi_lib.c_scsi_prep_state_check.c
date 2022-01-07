
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_state; } ;
struct request {int rq_flags; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 int KERN_ERR ;
 int RQF_PREEMPT ;






 int sdev_printk (int ,struct scsi_device*,char*) ;

__attribute__((used)) static blk_status_t
scsi_prep_state_check(struct scsi_device *sdev, struct request *req)
{
 switch (sdev->sdev_state) {
 case 130:
 case 128:





  sdev_printk(KERN_ERR, sdev,
       "rejecting I/O to offline device\n");
  return BLK_STS_IOERR;
 case 131:




  sdev_printk(KERN_ERR, sdev,
       "rejecting I/O to dead device\n");
  return BLK_STS_IOERR;
 case 133:
 case 132:
  return BLK_STS_RESOURCE;
 case 129:



  if (req && !(req->rq_flags & RQF_PREEMPT))
   return BLK_STS_RESOURCE;
  return BLK_STS_OK;
 default:





  if (req && !(req->rq_flags & RQF_PREEMPT))
   return BLK_STS_IOERR;
  return BLK_STS_OK;
 }
}
