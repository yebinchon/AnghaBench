
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hmcdrv_ftp_cmdspec {scalar_t__ id; scalar_t__ ofs; int len; int buf; int fname; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ fsize; scalar_t__ ofs; scalar_t__ len; scalar_t__ content; int fname; int timeout; } ;


 TYPE_1__ hmcdrv_cache_file ;
 int jiffies ;
 int memcpy (int ,scalar_t__,int) ;
 int pr_debug (char*,int ,int,int) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static ssize_t hmcdrv_cache_get(const struct hmcdrv_ftp_cmdspec *ftp)
{
 loff_t pos;
 ssize_t len;

 if ((ftp->id != hmcdrv_cache_file.id) ||
     strcmp(hmcdrv_cache_file.fname, ftp->fname))
  return -1;

 if (ftp->ofs >= hmcdrv_cache_file.fsize)
  return 0;

 if ((hmcdrv_cache_file.ofs < 0) ||
     time_after(jiffies, hmcdrv_cache_file.timeout))
  return -1;




 len = hmcdrv_cache_file.fsize - ftp->ofs;

 if (len > ftp->len)
  len = ftp->len;




 pos = ftp->ofs - hmcdrv_cache_file.ofs;

 if ((pos >= 0) &&
     ((pos + len) <= hmcdrv_cache_file.len)) {

  memcpy(ftp->buf,
         hmcdrv_cache_file.content + pos,
         len);
  pr_debug("using cached content of '%s', returning %zd/%zd bytes\n",
    hmcdrv_cache_file.fname, len,
    hmcdrv_cache_file.fsize);

  return len;
 }

 return -1;
}
