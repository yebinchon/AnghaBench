
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc {scalar_t__ res_map; } ;



__attribute__((used)) static unsigned long ptr_to_pide(struct ioc *ioc, unsigned long *res_ptr,
     unsigned int bitshiftcnt)
{
 return (((unsigned long)res_ptr - (unsigned long)ioc->res_map) << 3)
  + bitshiftcnt;
}
