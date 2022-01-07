
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int sense_data; scalar_t__ prevent_medium_removal; int removable; } ;
struct fsg_common {int* cmnd; int filesem; struct fsg_lun* curlun; } ;


 int EINVAL ;
 int LDBG (struct fsg_lun*,char*) ;
 int SS_INVALID_COMMAND ;
 int SS_INVALID_FIELD_IN_CDB ;
 int SS_MEDIUM_NOT_PRESENT ;
 int SS_MEDIUM_REMOVAL_PREVENTED ;
 int down_read (int *) ;
 int down_write (int *) ;
 int fsg_lun_close (struct fsg_lun*) ;
 int fsg_lun_is_open (struct fsg_lun*) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int do_start_stop(struct fsg_common *common)
{
 struct fsg_lun *curlun = common->curlun;
 int loej, start;

 if (!curlun) {
  return -EINVAL;
 } else if (!curlun->removable) {
  curlun->sense_data = SS_INVALID_COMMAND;
  return -EINVAL;
 } else if ((common->cmnd[1] & ~0x01) != 0 ||
     (common->cmnd[4] & ~0x03) != 0) {
  curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return -EINVAL;
 }

 loej = common->cmnd[4] & 0x02;
 start = common->cmnd[4] & 0x01;





 if (start) {
  if (!fsg_lun_is_open(curlun)) {
   curlun->sense_data = SS_MEDIUM_NOT_PRESENT;
   return -EINVAL;
  }
  return 0;
 }


 if (curlun->prevent_medium_removal) {
  LDBG(curlun, "unload attempt prevented\n");
  curlun->sense_data = SS_MEDIUM_REMOVAL_PREVENTED;
  return -EINVAL;
 }

 if (!loej)
  return 0;

 up_read(&common->filesem);
 down_write(&common->filesem);
 fsg_lun_close(curlun);
 up_write(&common->filesem);
 down_read(&common->filesem);

 return 0;
}
