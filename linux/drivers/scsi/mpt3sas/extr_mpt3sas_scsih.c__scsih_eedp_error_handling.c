
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct scsi_cmnd {int result; int sense_buffer; } ;


 int DID_ABORT ;
 int DRIVER_SENSE ;
 int ILLEGAL_REQUEST ;



 int SAM_STAT_CHECK_CONDITION ;
 int scsi_build_sense_buffer (int ,int ,int ,int,int) ;

__attribute__((used)) static void
_scsih_eedp_error_handling(struct scsi_cmnd *scmd, u16 ioc_status)
{
 u8 ascq;

 switch (ioc_status) {
 case 129:
  ascq = 0x01;
  break;
 case 130:
  ascq = 0x02;
  break;
 case 128:
  ascq = 0x03;
  break;
 default:
  ascq = 0x00;
  break;
 }
 scsi_build_sense_buffer(0, scmd->sense_buffer, ILLEGAL_REQUEST, 0x10,
     ascq);
 scmd->result = DRIVER_SENSE << 24 | (DID_ABORT << 16) |
     SAM_STAT_CHECK_CONDITION;
}
