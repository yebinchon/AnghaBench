
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 struct file* filp_open (char*,int,int) ;

__attribute__((used)) static int openFile(struct file **fpp, char *path, int flag, int mode)
{
 struct file *fp;

 fp = filp_open(path, flag, mode);
 if (IS_ERR(fp)) {
  *fpp = ((void*)0);
  return PTR_ERR(fp);
 }
 else {
  *fpp = fp;
  return 0;
 }
}
