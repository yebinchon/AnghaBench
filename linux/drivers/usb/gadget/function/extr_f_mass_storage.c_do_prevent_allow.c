
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int prevent_medium_removal; int sense_data; int removable; } ;
struct fsg_common {int* cmnd; struct fsg_lun* curlun; } ;


 int EINVAL ;
 int SS_INVALID_COMMAND ;
 int SS_INVALID_FIELD_IN_CDB ;
 int fsg_lun_fsync_sub (struct fsg_lun*) ;

__attribute__((used)) static int do_prevent_allow(struct fsg_common *common)
{
 struct fsg_lun *curlun = common->curlun;
 int prevent;

 if (!common->curlun) {
  return -EINVAL;
 } else if (!common->curlun->removable) {
  common->curlun->sense_data = SS_INVALID_COMMAND;
  return -EINVAL;
 }

 prevent = common->cmnd[4] & 0x01;
 if ((common->cmnd[4] & ~0x01) != 0) {
  curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return -EINVAL;
 }

 if (curlun->prevent_medium_removal && !prevent)
  fsg_lun_fsync_sub(curlun);
 curlun->prevent_medium_removal = prevent;
 return 0;
}
