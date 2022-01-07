
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_cmnd {int dummy; } ;



__attribute__((used)) static inline void sd_zbc_complete(struct scsi_cmnd *cmd,
       unsigned int good_bytes,
       struct scsi_sense_hdr *sshdr) {}
