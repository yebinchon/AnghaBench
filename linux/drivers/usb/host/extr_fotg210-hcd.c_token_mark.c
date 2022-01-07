
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {int dummy; } ;
typedef int __u32 ;
typedef int __hc32 ;


 int IS_SHORT_READ (int) ;
 int QTD_STS_ACTIVE ;
 int QTD_STS_HALT ;
 int hc32_to_cpu (struct fotg210_hcd*,int ) ;

__attribute__((used)) static inline char token_mark(struct fotg210_hcd *fotg210, __hc32 token)
{
 __u32 v = hc32_to_cpu(fotg210, token);

 if (v & QTD_STS_ACTIVE)
  return '*';
 if (v & QTD_STS_HALT)
  return '-';
 if (!IS_SHORT_READ(v))
  return ' ';

 return '/';
}
