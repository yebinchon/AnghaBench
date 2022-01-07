
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EIO ;
 int kstrtou16 (char*,int ,int *) ;
 int pr_err (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int split_arg_list(char *buf, u16 *ch_num, char **sample_res)
{
 char *num;
 int ret;

 num = strsep(&buf, "x");
 if (!num)
  goto err;
 ret = kstrtou16(num, 0, ch_num);
 if (ret)
  goto err;
 *sample_res = strsep(&buf, ".\n");
 if (!*sample_res)
  goto err;

 return 0;

err:
 pr_err("Bad PCM format\n");
 return -EIO;
}
