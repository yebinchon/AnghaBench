
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; unsigned char* sense_buffer; } ;
typedef int arr ;


 int NO_ADDITIONAL_SENSE ;
 int SCSI_SENSE_BUFFERSIZE ;
 unsigned char THRESHOLD_EXCEEDED ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 int* iec_m_pg ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int mk_sense_buffer (struct scsi_cmnd*,int ,int ,int ) ;
 int sdebug_dsense ;

__attribute__((used)) static int resp_requests(struct scsi_cmnd *scp,
    struct sdebug_dev_info *devip)
{
 unsigned char *sbuff;
 unsigned char *cmd = scp->cmnd;
 unsigned char arr[SCSI_SENSE_BUFFERSIZE];
 bool dsense;
 int len = 18;

 memset(arr, 0, sizeof(arr));
 dsense = !!(cmd[1] & 1);
 sbuff = scp->sense_buffer;
 if ((iec_m_pg[2] & 0x4) && (6 == (iec_m_pg[3] & 0xf))) {
  if (dsense) {
   arr[0] = 0x72;
   arr[1] = 0x0;
   arr[2] = THRESHOLD_EXCEEDED;
   arr[3] = 0xff;
   len = 8;
  } else {
   arr[0] = 0x70;
   arr[2] = 0x0;
   arr[7] = 0xa;
   arr[12] = THRESHOLD_EXCEEDED;
   arr[13] = 0xff;
  }
 } else {
  memcpy(arr, sbuff, SCSI_SENSE_BUFFERSIZE);
  if (arr[0] >= 0x70 && dsense == sdebug_dsense)
   ;
  else if (arr[0] <= 0x70) {
   if (dsense) {
    memset(arr, 0, 8);
    arr[0] = 0x72;
    len = 8;
   } else {
    memset(arr, 0, 18);
    arr[0] = 0x70;
    arr[7] = 0xa;
   }
  } else if (dsense) {
   memset(arr, 0, 8);
   arr[0] = 0x72;
   arr[1] = sbuff[2];
   arr[2] = sbuff[12];
   arr[3] = sbuff[13];
   len = 8;
  } else {
   memset(arr, 0, 18);
   arr[0] = 0x70;
   arr[2] = sbuff[1];
   arr[7] = 0xa;
   arr[12] = sbuff[1];
   arr[13] = sbuff[3];
  }

 }
 mk_sense_buffer(scp, 0, NO_ADDITIONAL_SENSE, 0);
 return fill_from_dev_buffer(scp, arr, len);
}
