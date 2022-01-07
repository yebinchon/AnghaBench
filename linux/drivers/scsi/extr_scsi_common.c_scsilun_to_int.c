
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_lun {scalar_t__* scsi_lun; } ;
typedef int lun ;



u64 scsilun_to_int(struct scsi_lun *scsilun)
{
 int i;
 u64 lun;

 lun = 0;
 for (i = 0; i < sizeof(lun); i += 2)
  lun = lun | (((u64)scsilun->scsi_lun[i] << ((i + 1) * 8)) |
        ((u64)scsilun->scsi_lun[i + 1] << (i * 8)));
 return lun;
}
