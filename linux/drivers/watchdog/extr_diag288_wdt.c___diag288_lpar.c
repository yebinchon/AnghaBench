
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG_STAT_X288 ;
 int __diag288 (unsigned int,unsigned int,unsigned long,int ) ;
 int diag_stat_inc (int ) ;

__attribute__((used)) static int __diag288_lpar(unsigned int func, unsigned int timeout,
     unsigned long action)
{
 diag_stat_inc(DIAG_STAT_X288);
 return __diag288(func, timeout, action, 0);
}
