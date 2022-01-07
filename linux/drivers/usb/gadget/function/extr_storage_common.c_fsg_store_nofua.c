
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int nofua; } ;
typedef int ssize_t ;


 int fsg_lun_fsync_sub (struct fsg_lun*) ;
 int strtobool (char const*,int*) ;

ssize_t fsg_store_nofua(struct fsg_lun *curlun, const char *buf, size_t count)
{
 bool nofua;
 int ret;

 ret = strtobool(buf, &nofua);
 if (ret)
  return ret;


 if (!nofua && curlun->nofua)
  fsg_lun_fsync_sub(curlun);

 curlun->nofua = nofua;

 return count;
}
