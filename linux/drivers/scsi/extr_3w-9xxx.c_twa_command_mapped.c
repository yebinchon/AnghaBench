
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 scalar_t__ TW_MIN_SGL_LENGTH ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;

__attribute__((used)) static bool twa_command_mapped(struct scsi_cmnd *cmd)
{
 return scsi_sg_count(cmd) != 1 ||
  scsi_bufflen(cmd) >= TW_MIN_SGL_LENGTH;
}
