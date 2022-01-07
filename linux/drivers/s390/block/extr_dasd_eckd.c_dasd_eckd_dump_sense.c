
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct irb {int scsw; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int flags; } ;


 int DASD_CQR_SUPPRESS_CR ;
 int DASD_CQR_SUPPRESS_FP ;
 int DASD_CQR_SUPPRESS_IL ;
 int DASD_CQR_SUPPRESS_NRF ;
 int SNS0_CMD_REJECT ;
 int SNS1_FILE_PROTECTED ;
 int SNS1_NO_REC_FOUND ;
 int dasd_eckd_dump_sense_ccw (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ;
 int dasd_eckd_dump_sense_tcw (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ;
 int* dasd_get_sense (struct irb*) ;
 int scsw_cstat (int *) ;
 scalar_t__ scsw_is_tm (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void dasd_eckd_dump_sense(struct dasd_device *device,
     struct dasd_ccw_req *req, struct irb *irb)
{
 u8 *sense = dasd_get_sense(irb);

 if (scsw_is_tm(&irb->scsw)) {





  if (sense && (sense[1] & SNS1_FILE_PROTECTED) &&
      test_bit(DASD_CQR_SUPPRESS_FP, &req->flags))
   return;
  if (scsw_cstat(&irb->scsw) == 0x40 &&
      test_bit(DASD_CQR_SUPPRESS_IL, &req->flags))
   return;

  dasd_eckd_dump_sense_tcw(device, req, irb);
 } else {





  if (sense && sense[0] & SNS0_CMD_REJECT &&
      test_bit(DASD_CQR_SUPPRESS_CR, &req->flags))
   return;

  if (sense && sense[1] & SNS1_NO_REC_FOUND &&
      test_bit(DASD_CQR_SUPPRESS_NRF, &req->flags))
   return;

  dasd_eckd_dump_sense_ccw(device, req, irb);
 }
}
