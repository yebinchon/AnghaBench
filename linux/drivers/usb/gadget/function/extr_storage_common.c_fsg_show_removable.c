
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int removable; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

ssize_t fsg_show_removable(struct fsg_lun *curlun, char *buf)
{
 return sprintf(buf, "%u\n", curlun->removable);
}
