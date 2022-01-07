
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_RDONLY ;
 int PTR_ERR (struct file*) ;
 int filp_close (struct file*,int *) ;
 struct file* filp_open (char*,int ,int ) ;
 int readFile (struct file*,char*,int) ;

__attribute__((used)) static int isFileReadable(char *path)
{
 struct file *fp;
 int ret = 0;
 char buf;

 fp = filp_open(path, O_RDONLY, 0);
 if (IS_ERR(fp))
  return PTR_ERR(fp);

 if (readFile(fp, &buf, 1) != 1)
  ret = -EINVAL;

 filp_close(fp, ((void*)0));
 return ret;
}
