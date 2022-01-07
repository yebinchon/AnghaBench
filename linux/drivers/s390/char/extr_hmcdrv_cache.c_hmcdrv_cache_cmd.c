
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hmcdrv_ftp_cmdspec {scalar_t__ id; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ (* hmcdrv_cache_ftpfunc ) (struct hmcdrv_ftp_cmdspec const*,int *) ;
struct TYPE_2__ {int ofs; int fsize; int id; } ;


 scalar_t__ HMCDRV_FTP_DIR ;
 scalar_t__ HMCDRV_FTP_GET ;
 scalar_t__ HMCDRV_FTP_NLIST ;
 int HMCDRV_FTP_NOOP ;
 int LLONG_MAX ;
 scalar_t__ hmcdrv_cache_do (struct hmcdrv_ftp_cmdspec const*,scalar_t__ (*) (struct hmcdrv_ftp_cmdspec const*,int *)) ;
 TYPE_1__ hmcdrv_cache_file ;
 scalar_t__ hmcdrv_cache_get (struct hmcdrv_ftp_cmdspec const*) ;

ssize_t hmcdrv_cache_cmd(const struct hmcdrv_ftp_cmdspec *ftp,
    hmcdrv_cache_ftpfunc func)
{
 ssize_t len;

 if ((ftp->id == HMCDRV_FTP_DIR) ||
     (ftp->id == HMCDRV_FTP_NLIST) ||
     (ftp->id == HMCDRV_FTP_GET)) {

  len = hmcdrv_cache_get(ftp);

  if (len >= 0)
   return len;

  len = hmcdrv_cache_do(ftp, func);

  if (len >= 0)
   return len;

 } else {
  len = func(ftp, ((void*)0));
 }




 hmcdrv_cache_file.id = HMCDRV_FTP_NOOP;
 hmcdrv_cache_file.fsize = LLONG_MAX;
 hmcdrv_cache_file.ofs = -1;

 return len;
}
