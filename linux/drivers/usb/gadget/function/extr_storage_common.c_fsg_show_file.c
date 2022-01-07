
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;
struct fsg_lun {int filp; } ;
typedef size_t ssize_t ;


 scalar_t__ IS_ERR (char*) ;
 scalar_t__ PAGE_SIZE ;
 size_t PTR_ERR (char*) ;
 int down_read (struct rw_semaphore*) ;
 char* file_path (int ,char*,scalar_t__) ;
 scalar_t__ fsg_lun_is_open (struct fsg_lun*) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char*) ;
 int up_read (struct rw_semaphore*) ;

ssize_t fsg_show_file(struct fsg_lun *curlun, struct rw_semaphore *filesem,
        char *buf)
{
 char *p;
 ssize_t rc;

 down_read(filesem);
 if (fsg_lun_is_open(curlun)) {
  p = file_path(curlun->filp, buf, PAGE_SIZE - 1);
  if (IS_ERR(p))
   rc = PTR_ERR(p);
  else {
   rc = strlen(p);
   memmove(buf, p, rc);
   buf[rc] = '\n';
   buf[++rc] = 0;
  }
 } else {
  *buf = 0;
  rc = 0;
 }
 up_read(filesem);
 return rc;
}
