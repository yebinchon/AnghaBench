
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;
struct fsg_lun {int dummy; } ;
typedef size_t ssize_t ;


 size_t _fsg_store_ro (struct fsg_lun*,int) ;
 int down_read (struct rw_semaphore*) ;
 size_t strtobool (char const*,int*) ;
 int up_read (struct rw_semaphore*) ;

ssize_t fsg_store_ro(struct fsg_lun *curlun, struct rw_semaphore *filesem,
       const char *buf, size_t count)
{
 ssize_t rc;
 bool ro;

 rc = strtobool(buf, &ro);
 if (rc)
  return rc;





 down_read(filesem);
 rc = _fsg_store_ro(curlun, ro);
 if (!rc)
  rc = count;
 up_read(filesem);

 return rc;
}
