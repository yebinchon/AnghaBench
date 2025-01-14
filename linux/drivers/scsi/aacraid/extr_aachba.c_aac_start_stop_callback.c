
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct fib {int dummy; } ;


 int BUG_ON (int ) ;
 int COMMAND_COMPLETE ;
 int DID_OK ;
 int SAM_STAT_GOOD ;
 int aac_fib_complete (struct fib*) ;
 int aac_fib_free (struct fib*) ;
 int aac_valid_context (struct scsi_cmnd*,struct fib*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void aac_start_stop_callback(void *context, struct fib *fibptr)
{
 struct scsi_cmnd *scsicmd = context;

 if (!aac_valid_context(scsicmd, fibptr))
  return;

 BUG_ON(fibptr == ((void*)0));

 scsicmd->result = DID_OK << 16 | COMMAND_COMPLETE << 8 | SAM_STAT_GOOD;

 aac_fib_complete(fibptr);
 aac_fib_free(fibptr);
 scsicmd->scsi_done(scsicmd);
}
