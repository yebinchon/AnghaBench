
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CPRBX {int dummy; } ;


 int kfree (void*) ;
 int memzero_explicit (void*,int) ;

__attribute__((used)) static void free_cprbmem(void *mem, size_t paramblen, int scrub)
{
 if (scrub)
  memzero_explicit(mem, 2 * (sizeof(struct CPRBX) + paramblen));
 kfree(mem);
}
