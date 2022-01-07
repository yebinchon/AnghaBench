
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int ILLEGAL_REQUEST ;
 int INVALID_OPCODE ;
 int mk_sense_buffer (struct scsi_cmnd*,int ,int ,int ) ;

__attribute__((used)) static void mk_sense_invalid_opcode(struct scsi_cmnd *scp)
{
 mk_sense_buffer(scp, ILLEGAL_REQUEST, INVALID_OPCODE, 0);
}
