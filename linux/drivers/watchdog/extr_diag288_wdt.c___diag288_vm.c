
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG_STAT_X288 ;
 int __diag288 (unsigned int,unsigned int,int ,size_t) ;
 int diag_stat_inc (int ) ;
 int virt_to_phys (char*) ;

__attribute__((used)) static int __diag288_vm(unsigned int func, unsigned int timeout,
   char *cmd, size_t len)
{
 diag_stat_inc(DIAG_STAT_X288);
 return __diag288(func, timeout, virt_to_phys(cmd), len);
}
