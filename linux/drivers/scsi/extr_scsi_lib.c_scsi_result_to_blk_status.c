
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_MEDIUM ;
 int BLK_STS_NEXUS ;
 int BLK_STS_NOSPC ;
 int BLK_STS_OK ;
 int BLK_STS_TARGET ;
 int BLK_STS_TRANSPORT ;






 int host_byte (int) ;
 int scsi_status_is_good (int) ;
 int set_host_byte (struct scsi_cmnd*,int const) ;

__attribute__((used)) static blk_status_t scsi_result_to_blk_status(struct scsi_cmnd *cmd, int result)
{
 switch (host_byte(result)) {
 case 130:





  if (scsi_status_is_good(result) && (result & ~0xff) == 0)
   return BLK_STS_OK;
  return BLK_STS_IOERR;
 case 128:
  return BLK_STS_TRANSPORT;
 case 129:
  set_host_byte(cmd, 130);
  return BLK_STS_TARGET;
 case 131:
  set_host_byte(cmd, 130);
  return BLK_STS_NEXUS;
 case 133:
  set_host_byte(cmd, 130);
  return BLK_STS_NOSPC;
 case 132:
  set_host_byte(cmd, 130);
  return BLK_STS_MEDIUM;
 default:
  return BLK_STS_IOERR;
 }
}
