
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_lun {int* scsi_lun; } ;
typedef int lun ;


 int memset (int*,int ,int) ;

void int_to_scsilun(u64 lun, struct scsi_lun *scsilun)
{
 int i;

 memset(scsilun->scsi_lun, 0, sizeof(scsilun->scsi_lun));

 for (i = 0; i < sizeof(lun); i += 2) {
  scsilun->scsi_lun[i] = (lun >> 8) & 0xFF;
  scsilun->scsi_lun[i+1] = lun & 0xFF;
  lun = lun >> 16;
 }
}
