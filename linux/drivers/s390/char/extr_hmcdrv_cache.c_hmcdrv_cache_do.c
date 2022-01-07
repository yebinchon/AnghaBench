
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct hmcdrv_ftp_cmdspec {scalar_t__ len; int ofs; int fname; int id; int buf; } const hmcdrv_ftp_cmdspec ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ (* hmcdrv_cache_ftpfunc ) (struct hmcdrv_ftp_cmdspec const*,int *) ;
struct TYPE_2__ {scalar_t__ len; int ofs; int fsize; int id; int fname; int content; scalar_t__ timeout; } ;


 int HMCDRV_CACHE_TIMEOUT ;
 int HMCDRV_FTP_FIDENT_MAX ;
 int HZ ;
 TYPE_1__ hmcdrv_cache_file ;
 scalar_t__ jiffies ;
 int memcpy (int ,int ,scalar_t__) ;
 int pr_debug (char*,scalar_t__,int ,...) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static ssize_t hmcdrv_cache_do(const struct hmcdrv_ftp_cmdspec *ftp,
          hmcdrv_cache_ftpfunc func)
{
 ssize_t len;






 if ((ftp->len > 0) && (hmcdrv_cache_file.len >= ftp->len)) {





  struct hmcdrv_ftp_cmdspec cftp = *ftp;
  cftp.buf = hmcdrv_cache_file.content;
  cftp.len = hmcdrv_cache_file.len;

  len = func(&cftp, &hmcdrv_cache_file.fsize);

  if (len > 0) {
   pr_debug("caching %zd bytes content for '%s'\n",
     len, ftp->fname);

   if (len > ftp->len)
    len = ftp->len;

   hmcdrv_cache_file.ofs = ftp->ofs;
   hmcdrv_cache_file.timeout = jiffies +
    HMCDRV_CACHE_TIMEOUT * HZ;
   memcpy(ftp->buf, hmcdrv_cache_file.content, len);
  }
 } else {
  len = func(ftp, &hmcdrv_cache_file.fsize);
  hmcdrv_cache_file.ofs = -1;
 }

 if (len > 0) {



  strlcpy(hmcdrv_cache_file.fname, ftp->fname,
   HMCDRV_FTP_FIDENT_MAX);
  hmcdrv_cache_file.id = ftp->id;
  pr_debug("caching cmd %d, file size %zu for '%s'\n",
    ftp->id, hmcdrv_cache_file.fsize, ftp->fname);
 }

 return len;
}
