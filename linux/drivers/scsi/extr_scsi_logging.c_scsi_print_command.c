
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int cmd_len; TYPE_2__* device; int * cmnd; TYPE_1__* request; } ;
struct TYPE_4__ {int sdev_gendev; } ;
struct TYPE_3__ {int tag; } ;


 int KERN_INFO ;
 scalar_t__ WARN_ON (int) ;
 int dev_printk (int ,int *,char*,char*) ;
 int hex_dump_to_buffer (int *,size_t,int,int,char*,size_t,int) ;
 size_t min (int,int) ;
 int scmd_name (struct scsi_cmnd*) ;
 scalar_t__ scnprintf (char*,size_t,char*,...) ;
 scalar_t__ scsi_format_opcode_name (char*,size_t,int *) ;
 int scsi_log_release_buffer (char*) ;
 char* scsi_log_reserve_buffer (size_t*) ;
 size_t sdev_format_header (char*,size_t,int ,int ) ;

void scsi_print_command(struct scsi_cmnd *cmd)
{
 int k;
 char *logbuf;
 size_t off, logbuf_len;

 if (!cmd->cmnd)
  return;

 logbuf = scsi_log_reserve_buffer(&logbuf_len);
 if (!logbuf)
  return;

 off = sdev_format_header(logbuf, logbuf_len,
     scmd_name(cmd), cmd->request->tag);
 if (off >= logbuf_len)
  goto out_printk;
 off += scnprintf(logbuf + off, logbuf_len - off, "CDB: ");
 if (WARN_ON(off >= logbuf_len))
  goto out_printk;

 off += scsi_format_opcode_name(logbuf + off, logbuf_len - off,
           cmd->cmnd);
 if (off >= logbuf_len)
  goto out_printk;


 if (cmd->cmd_len > 16) {

  off += scnprintf(logbuf + off, logbuf_len - off, "\n");
  dev_printk(KERN_INFO, &cmd->device->sdev_gendev, "%s", logbuf);
  scsi_log_release_buffer(logbuf);
  for (k = 0; k < cmd->cmd_len; k += 16) {
   size_t linelen = min(cmd->cmd_len - k, 16);

   logbuf = scsi_log_reserve_buffer(&logbuf_len);
   if (!logbuf)
    break;
   off = sdev_format_header(logbuf, logbuf_len,
       scmd_name(cmd),
       cmd->request->tag);
   if (!WARN_ON(off > logbuf_len - 58)) {
    off += scnprintf(logbuf + off, logbuf_len - off,
       "CDB[%02x]: ", k);
    hex_dump_to_buffer(&cmd->cmnd[k], linelen,
         16, 1, logbuf + off,
         logbuf_len - off, 0);
   }
   dev_printk(KERN_INFO, &cmd->device->sdev_gendev, "%s",
       logbuf);
   scsi_log_release_buffer(logbuf);
  }
  return;
 }
 if (!WARN_ON(off > logbuf_len - 49)) {
  off += scnprintf(logbuf + off, logbuf_len - off, " ");
  hex_dump_to_buffer(cmd->cmnd, cmd->cmd_len, 16, 1,
       logbuf + off, logbuf_len - off,
       0);
 }
out_printk:
 dev_printk(KERN_INFO, &cmd->device->sdev_gendev, "%s", logbuf);
 scsi_log_release_buffer(logbuf);
}
