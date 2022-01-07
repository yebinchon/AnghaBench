
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_sense_hdr {scalar_t__ sense_key; int asc; scalar_t__ ascq; } ;
struct scsi_device {int inquiry_len; unsigned char scsi_level; int lun_in_cdb; TYPE_2__* host; TYPE_1__* sdev_target; } ;
typedef int blist_flags_t ;
struct TYPE_4__ {int short_inquiry; int no_scsi2_lun_in_cdb; } ;
struct TYPE_3__ {int scsi_level; } ;


 int BLIST_INQUIRY_36 ;
 int DMA_FROM_DEVICE ;
 scalar_t__ DRIVER_SENSE ;
 int EIO ;
 int HZ ;
 unsigned char INQUIRY ;
 int KERN_INFO ;
 int MAX_COMMAND_SIZE ;
 int SCSI_2 ;
 int SCSI_LOG_SCAN_BUS (int,int ) ;
 int SCSI_UNKNOWN ;
 scalar_t__ UNIT_ATTENTION ;
 scalar_t__ driver_byte (int) ;
 int memset (unsigned char*,int ,int) ;
 int min (int,int) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,unsigned char*,int,struct scsi_sense_hdr*,int,int,int*) ;
 int scsi_get_device_flags (struct scsi_device*,unsigned char*,unsigned char*) ;
 int scsi_inq_timeout ;
 int scsi_sanitize_inquiry_string (unsigned char*,int) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,...) ;
 int shost_printk (int ,TYPE_2__*,char*,int) ;

__attribute__((used)) static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
     int result_len, blist_flags_t *bflags)
{
 unsigned char scsi_cmd[MAX_COMMAND_SIZE];
 int first_inquiry_len, try_inquiry_len, next_inquiry_len;
 int response_len = 0;
 int pass, count, result;
 struct scsi_sense_hdr sshdr;

 *bflags = 0;




 first_inquiry_len = sdev->inquiry_len ? sdev->inquiry_len : 36;
 try_inquiry_len = first_inquiry_len;
 pass = 1;

 next_pass:
 SCSI_LOG_SCAN_BUS(3, sdev_printk(KERN_INFO, sdev,
    "scsi scan: INQUIRY pass %d length %d\n",
    pass, try_inquiry_len));


 for (count = 0; count < 3; ++count) {
  int resid;

  memset(scsi_cmd, 0, 6);
  scsi_cmd[0] = INQUIRY;
  scsi_cmd[4] = (unsigned char) try_inquiry_len;

  memset(inq_result, 0, try_inquiry_len);

  result = scsi_execute_req(sdev, scsi_cmd, DMA_FROM_DEVICE,
       inq_result, try_inquiry_len, &sshdr,
       HZ / 2 + HZ * scsi_inq_timeout, 3,
       &resid);

  SCSI_LOG_SCAN_BUS(3, sdev_printk(KERN_INFO, sdev,
    "scsi scan: INQUIRY %s with code 0x%x\n",
    result ? "failed" : "successful", result));

  if (result) {






   if (driver_byte(result) == DRIVER_SENSE &&
       scsi_sense_valid(&sshdr)) {
    if ((sshdr.sense_key == UNIT_ATTENTION) &&
        ((sshdr.asc == 0x28) ||
         (sshdr.asc == 0x29)) &&
        (sshdr.ascq == 0))
     continue;
   }
  } else {





   if (resid == try_inquiry_len)
    continue;
  }
  break;
 }

 if (result == 0) {
  scsi_sanitize_inquiry_string(&inq_result[8], 8);
  scsi_sanitize_inquiry_string(&inq_result[16], 16);
  scsi_sanitize_inquiry_string(&inq_result[32], 4);

  response_len = inq_result[4] + 5;
  if (response_len > 255)
   response_len = first_inquiry_len;
  *bflags = scsi_get_device_flags(sdev, &inq_result[8],
    &inq_result[16]);



  if (pass == 1) {
   if (BLIST_INQUIRY_36 & *bflags)
    next_inquiry_len = 36;
   else if (sdev->inquiry_len)
    next_inquiry_len = sdev->inquiry_len;
   else
    next_inquiry_len = response_len;


   if (next_inquiry_len > try_inquiry_len) {
    try_inquiry_len = next_inquiry_len;
    pass = 2;
    goto next_pass;
   }
  }

 } else if (pass == 2) {
  sdev_printk(KERN_INFO, sdev,
       "scsi scan: %d byte inquiry failed.  "
       "Consider BLIST_INQUIRY_36 for this device\n",
       try_inquiry_len);



  try_inquiry_len = first_inquiry_len;
  pass = 3;
  goto next_pass;
 }



 if (result)
  return -EIO;


 sdev->inquiry_len = min(try_inquiry_len, response_len);
 if (sdev->inquiry_len < 36) {
  if (!sdev->host->short_inquiry) {
   shost_printk(KERN_INFO, sdev->host,
        "scsi scan: INQUIRY result too short (%d),"
        " using 36\n", sdev->inquiry_len);
   sdev->host->short_inquiry = 1;
  }
  sdev->inquiry_len = 36;
 }
 sdev->scsi_level = inq_result[2] & 0x07;
 if (sdev->scsi_level >= 2 ||
     (sdev->scsi_level == 1 && (inq_result[3] & 0x0f) == 1))
  sdev->scsi_level++;
 sdev->sdev_target->scsi_level = sdev->scsi_level;





 sdev->lun_in_cdb = 0;
 if (sdev->scsi_level <= SCSI_2 &&
     sdev->scsi_level != SCSI_UNKNOWN &&
     !sdev->host->no_scsi2_lun_in_cdb)
  sdev->lun_in_cdb = 1;

 return 0;
}
