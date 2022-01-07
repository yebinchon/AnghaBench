
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int ro; int initially_ro; } ;
typedef int ssize_t ;


 int EBUSY ;
 int LDBG (struct fsg_lun*,char*,...) ;
 scalar_t__ fsg_lun_is_open (struct fsg_lun*) ;

__attribute__((used)) static ssize_t _fsg_store_ro(struct fsg_lun *curlun, bool ro)
{
 if (fsg_lun_is_open(curlun)) {
  LDBG(curlun, "read-only status change prevented\n");
  return -EBUSY;
 }

 curlun->ro = ro;
 curlun->initially_ro = ro;
 LDBG(curlun, "read-only status set to %d\n", curlun->ro);

 return 0;
}
