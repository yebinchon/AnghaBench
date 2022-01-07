
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;


 int ALUA_FAILOVER_RETRIES ;
 int ALUA_FAILOVER_TIMEOUT ;
 int ALUA_RTPG_EXT_HDR_UNSUPP ;
 int DMA_FROM_DEVICE ;
 int HZ ;
 int MAINTENANCE_IN ;
 int MAX_COMMAND_SIZE ;
 int MI_EXT_HDR_PARAM_FMT ;
 int MI_REPORT_TARGET_PGS ;
 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 int memset (int*,int,int) ;
 int put_unaligned_be32 (int,int*) ;
 int scsi_execute (struct scsi_device*,int*,int ,unsigned char*,int,int *,struct scsi_sense_hdr*,int,int ,int,int ,int *) ;

__attribute__((used)) static int submit_rtpg(struct scsi_device *sdev, unsigned char *buff,
         int bufflen, struct scsi_sense_hdr *sshdr, int flags)
{
 u8 cdb[MAX_COMMAND_SIZE];
 int req_flags = REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
  REQ_FAILFAST_DRIVER;


 memset(cdb, 0x0, MAX_COMMAND_SIZE);
 cdb[0] = MAINTENANCE_IN;
 if (!(flags & ALUA_RTPG_EXT_HDR_UNSUPP))
  cdb[1] = MI_REPORT_TARGET_PGS | MI_EXT_HDR_PARAM_FMT;
 else
  cdb[1] = MI_REPORT_TARGET_PGS;
 put_unaligned_be32(bufflen, &cdb[6]);

 return scsi_execute(sdev, cdb, DMA_FROM_DEVICE, buff, bufflen, ((void*)0),
   sshdr, ALUA_FAILOVER_TIMEOUT * HZ,
   ALUA_FAILOVER_RETRIES, req_flags, 0, ((void*)0));
}
