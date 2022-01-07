
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int sense_data; } ;
struct fsg_common {struct fsg_lun* curlun; } ;


 int SS_WRITE_ERROR ;
 int fsg_lun_fsync_sub (struct fsg_lun*) ;

__attribute__((used)) static int do_synchronize_cache(struct fsg_common *common)
{
 struct fsg_lun *curlun = common->curlun;
 int rc;



 rc = fsg_lun_fsync_sub(curlun);
 if (rc)
  curlun->sense_data = SS_WRITE_ERROR;
 return 0;
}
