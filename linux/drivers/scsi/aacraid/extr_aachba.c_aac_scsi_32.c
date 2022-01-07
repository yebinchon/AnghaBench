
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sgmap {int dummy; } ;
struct sgentry {int dummy; } ;
struct scsi_cmnd {int cmd_len; int cmnd; } ;
struct fib {TYPE_2__* dev; } ;
struct TYPE_3__ {int count; } ;
struct aac_srb {TYPE_1__ sg; int cdb; int count; } ;
struct aac_fibhdr {int dummy; } ;
typedef int fib_callback ;
struct TYPE_4__ {int max_fib_size; } ;


 int BUG_ON (int) ;
 int FsaNormal ;
 int ScsiPortCommand ;
 long aac_build_sg (struct scsi_cmnd*,struct sgmap*) ;
 int aac_fib_send (int ,struct fib*,int,int ,int ,int,int ,void*) ;
 struct aac_srb* aac_scsi_common (struct fib*,struct scsi_cmnd*) ;
 scalar_t__ aac_srb_callback ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;

__attribute__((used)) static int aac_scsi_32(struct fib * fib, struct scsi_cmnd * cmd)
{
 u16 fibsize;
 struct aac_srb * srbcmd = aac_scsi_common(fib, cmd);
 long ret;

 ret = aac_build_sg(cmd, (struct sgmap *)&srbcmd->sg);
 if (ret < 0)
  return ret;
 srbcmd->count = cpu_to_le32(scsi_bufflen(cmd));

 memset(srbcmd->cdb, 0, sizeof(srbcmd->cdb));
 memcpy(srbcmd->cdb, cmd->cmnd, cmd->cmd_len);



 fibsize = sizeof (struct aac_srb) +
  (((le32_to_cpu(srbcmd->sg.count) & 0xff) - 1) *
   sizeof (struct sgentry));
 BUG_ON (fibsize > (fib->dev->max_fib_size -
    sizeof(struct aac_fibhdr)));




 return aac_fib_send(ScsiPortCommand, fib, fibsize, FsaNormal, 0, 1,
      (fib_callback) aac_srb_callback, (void *) cmd);
}
