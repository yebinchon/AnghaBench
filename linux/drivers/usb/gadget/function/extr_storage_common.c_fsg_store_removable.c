
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int removable; } ;
typedef int ssize_t ;


 int strtobool (char const*,int*) ;

ssize_t fsg_store_removable(struct fsg_lun *curlun, const char *buf,
       size_t count)
{
 bool removable;
 int ret;

 ret = strtobool(buf, &removable);
 if (ret)
  return ret;

 curlun->removable = removable;

 return count;
}
