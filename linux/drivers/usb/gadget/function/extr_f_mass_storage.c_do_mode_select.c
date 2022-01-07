
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int sense_data; } ;
struct fsg_common {struct fsg_lun* curlun; } ;
struct fsg_buffhd {int dummy; } ;


 int EINVAL ;
 int SS_INVALID_COMMAND ;

__attribute__((used)) static int do_mode_select(struct fsg_common *common, struct fsg_buffhd *bh)
{
 struct fsg_lun *curlun = common->curlun;


 if (curlun)
  curlun->sense_data = SS_INVALID_COMMAND;
 return -EINVAL;
}
