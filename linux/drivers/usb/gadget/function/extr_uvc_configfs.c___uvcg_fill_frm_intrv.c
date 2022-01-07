
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int kstrtou32 (char*,int ,int *) ;

__attribute__((used)) static inline int __uvcg_fill_frm_intrv(char *buf, void *priv)
{
 u32 num, **interv;
 int ret;

 ret = kstrtou32(buf, 0, &num);
 if (ret)
  return ret;

 interv = priv;
 **interv = num;
 ++*interv;

 return 0;
}
