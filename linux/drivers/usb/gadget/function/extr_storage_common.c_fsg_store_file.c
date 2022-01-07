
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dummy; } ;
struct fsg_lun {int unit_attention_data; scalar_t__ prevent_medium_removal; } ;
typedef int ssize_t ;


 int EBUSY ;
 int LDBG (struct fsg_lun*,char*) ;
 int SS_MEDIUM_NOT_PRESENT ;
 int SS_NOT_READY_TO_READY_TRANSITION ;
 int down_write (struct rw_semaphore*) ;
 int fsg_lun_close (struct fsg_lun*) ;
 scalar_t__ fsg_lun_is_open (struct fsg_lun*) ;
 int fsg_lun_open (struct fsg_lun*,char const*) ;
 int up_write (struct rw_semaphore*) ;

ssize_t fsg_store_file(struct fsg_lun *curlun, struct rw_semaphore *filesem,
         const char *buf, size_t count)
{
 int rc = 0;

 if (curlun->prevent_medium_removal && fsg_lun_is_open(curlun)) {
  LDBG(curlun, "eject attempt prevented\n");
  return -EBUSY;
 }


 if (count > 0 && buf[count-1] == '\n')
  ((char *) buf)[count-1] = 0;


 down_write(filesem);
 if (count > 0 && buf[0]) {

  rc = fsg_lun_open(curlun, buf);
  if (rc == 0)
   curlun->unit_attention_data =
     SS_NOT_READY_TO_READY_TRANSITION;
 } else if (fsg_lun_is_open(curlun)) {
  fsg_lun_close(curlun);
  curlun->unit_attention_data = SS_MEDIUM_NOT_PRESENT;
 }
 up_write(filesem);
 return (rc < 0 ? rc : count);
}
