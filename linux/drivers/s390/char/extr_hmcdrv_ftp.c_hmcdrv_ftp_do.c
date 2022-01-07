
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hmcdrv_ftp_cmdspec {int len; scalar_t__ ofs; int fname; int id; } ;
typedef int ssize_t ;
struct TYPE_2__ {int transfer; } ;


 int ENXIO ;
 int hmcdrv_cache_cmd (struct hmcdrv_ftp_cmdspec const*,int ) ;
 TYPE_1__* hmcdrv_ftp_funcs ;
 int hmcdrv_ftp_mutex ;
 scalar_t__ hmcdrv_ftp_refcnt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ,long long,int ) ;

ssize_t hmcdrv_ftp_do(const struct hmcdrv_ftp_cmdspec *ftp)
{
 ssize_t len;

 mutex_lock(&hmcdrv_ftp_mutex);

 if (hmcdrv_ftp_funcs && hmcdrv_ftp_refcnt) {
  pr_debug("starting transfer, cmd %d for '%s' at %lld with %zd bytes\n",
    ftp->id, ftp->fname, (long long) ftp->ofs, ftp->len);
  len = hmcdrv_cache_cmd(ftp, hmcdrv_ftp_funcs->transfer);
 } else {
  len = -ENXIO;
 }

 mutex_unlock(&hmcdrv_ftp_mutex);
 return len;
}
