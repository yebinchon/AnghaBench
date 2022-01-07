
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {char* inquiry_string; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

ssize_t fsg_show_inquiry_string(struct fsg_lun *curlun, char *buf)
{
 return sprintf(buf, "%s\n", curlun->inquiry_string);
}
