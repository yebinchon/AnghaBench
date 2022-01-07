
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;



__attribute__((used)) static inline unsigned int srb10_len(const struct scsi_cmnd *cmd)
{
 return cmd->cmnd[7] << 8 | cmd->cmnd[8];
}
