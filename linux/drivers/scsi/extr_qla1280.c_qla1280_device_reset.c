
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scsi_qla_host {int dummy; } ;


 int BIT_0 ;
 int BIT_1 ;
 int BIT_2 ;
 int BIT_7 ;
 int ENTER (char*) ;
 int LEAVE (char*) ;
 int MAILBOX_REGISTER_COUNT ;
 int MBC_ABORT_TARGET ;
 int MK_SYNC_ID ;
 int dprintk (int,char*) ;
 int qla1280_mailbox_command (struct scsi_qla_host*,int,int*) ;
 int qla1280_marker (struct scsi_qla_host*,int,int,int ,int ) ;

__attribute__((used)) static int
qla1280_device_reset(struct scsi_qla_host *ha, int bus, int target)
{
 uint16_t mb[MAILBOX_REGISTER_COUNT];
 int status;

 ENTER("qla1280_device_reset");

 mb[0] = MBC_ABORT_TARGET;
 mb[1] = (bus ? (target | BIT_7) : target) << 8;
 mb[2] = 1;
 status = qla1280_mailbox_command(ha, BIT_2 | BIT_1 | BIT_0, &mb[0]);


 qla1280_marker(ha, bus, target, 0, MK_SYNC_ID);

 if (status)
  dprintk(2, "qla1280_device_reset: **** FAILED ****\n");

 LEAVE("qla1280_device_reset");
 return status;
}
