
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int filp_close (struct file*,int *) ;

__attribute__((used)) static int closeFile(struct file *fp)
{
 filp_close(fp, ((void*)0));
 return 0;
}
