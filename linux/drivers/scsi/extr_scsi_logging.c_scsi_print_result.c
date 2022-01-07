
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; int result; TYPE_1__* request; } ;
struct TYPE_4__ {int sdev_gendev; } ;
struct TYPE_3__ {int tag; } ;


 int KERN_INFO ;
 scalar_t__ WARN_ON (int) ;
 int dev_printk (int ,int *,char*,char*) ;
 char const* driver_byte (int ) ;
 char const* host_byte (int ) ;
 int scmd_name (struct scsi_cmnd const*) ;
 scalar_t__ scnprintf (char*,size_t,char*,...) ;
 char* scsi_driverbyte_string (int ) ;
 char* scsi_hostbyte_string (int ) ;
 int scsi_log_release_buffer (char*) ;
 char* scsi_log_reserve_buffer (size_t*) ;
 char* scsi_mlreturn_string (int) ;
 size_t sdev_format_header (char*,size_t,int ,int ) ;

void scsi_print_result(const struct scsi_cmnd *cmd, const char *msg,
         int disposition)
{
 char *logbuf;
 size_t off, logbuf_len;
 const char *mlret_string = scsi_mlreturn_string(disposition);
 const char *hb_string = scsi_hostbyte_string(cmd->result);
 const char *db_string = scsi_driverbyte_string(cmd->result);

 logbuf = scsi_log_reserve_buffer(&logbuf_len);
 if (!logbuf)
  return;

 off = sdev_format_header(logbuf, logbuf_len,
     scmd_name(cmd), cmd->request->tag);

 if (off >= logbuf_len)
  goto out_printk;

 if (msg) {
  off += scnprintf(logbuf + off, logbuf_len - off,
     "%s: ", msg);
  if (WARN_ON(off >= logbuf_len))
   goto out_printk;
 }
 if (mlret_string)
  off += scnprintf(logbuf + off, logbuf_len - off,
     "%s ", mlret_string);
 else
  off += scnprintf(logbuf + off, logbuf_len - off,
     "UNKNOWN(0x%02x) ", disposition);
 if (WARN_ON(off >= logbuf_len))
  goto out_printk;

 off += scnprintf(logbuf + off, logbuf_len - off, "Result: ");
 if (WARN_ON(off >= logbuf_len))
  goto out_printk;

 if (hb_string)
  off += scnprintf(logbuf + off, logbuf_len - off,
     "hostbyte=%s ", hb_string);
 else
  off += scnprintf(logbuf + off, logbuf_len - off,
     "hostbyte=0x%02x ", host_byte(cmd->result));
 if (WARN_ON(off >= logbuf_len))
  goto out_printk;

 if (db_string)
  off += scnprintf(logbuf + off, logbuf_len - off,
     "driverbyte=%s", db_string);
 else
  off += scnprintf(logbuf + off, logbuf_len - off,
     "driverbyte=0x%02x", driver_byte(cmd->result));
out_printk:
 dev_printk(KERN_INFO, &cmd->device->sdev_gendev, "%s", logbuf);
 scsi_log_release_buffer(logbuf);
}
