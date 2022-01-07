
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_lun {scalar_t__* scsi_lun; } ;



__attribute__((used)) static bool check_lun(struct scsi_lun lun)
{
 bool result;

 result = ((lun.scsi_lun[7] == 0) &&
    (lun.scsi_lun[6] == 0) &&
    (lun.scsi_lun[5] == 0) &&
    (lun.scsi_lun[4] == 0) &&
    (lun.scsi_lun[3] == 0) &&
    (lun.scsi_lun[2] == 0) &&

    (lun.scsi_lun[0] == 0));

 return result;
}
