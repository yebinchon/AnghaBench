
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int * filp; } ;


 int LDBG (struct fsg_lun*,char*) ;
 int fput (int *) ;

void fsg_lun_close(struct fsg_lun *curlun)
{
 if (curlun->filp) {
  LDBG(curlun, "close backing file\n");
  fput(curlun->filp);
  curlun->filp = ((void*)0);
 }
}
