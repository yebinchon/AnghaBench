
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int ro; int initially_ro; } ;
typedef int ssize_t ;


 scalar_t__ fsg_lun_is_open (struct fsg_lun*) ;
 int sprintf (char*,char*,int) ;

ssize_t fsg_show_ro(struct fsg_lun *curlun, char *buf)
{
 return sprintf(buf, "%d\n", fsg_lun_is_open(curlun)
      ? curlun->ro
      : curlun->initially_ro);
}
