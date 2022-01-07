
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {char* inquiry_string; } ;
typedef size_t ssize_t ;


 size_t min (size_t,int) ;
 int snprintf (char*,int,char*,char const*) ;

ssize_t fsg_store_inquiry_string(struct fsg_lun *curlun, const char *buf,
     size_t count)
{
 const size_t len = min(count, sizeof(curlun->inquiry_string));

 if (len == 0 || buf[0] == '\n') {
  curlun->inquiry_string[0] = 0;
 } else {
  snprintf(curlun->inquiry_string,
    sizeof(curlun->inquiry_string), "%-28s", buf);
  if (curlun->inquiry_string[len-1] == '\n')
   curlun->inquiry_string[len-1] = ' ';
 }

 return count;
}
