
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_pool_p ;


 int DEBUG_ALLOC ;
 int DEBUG_FLAGS ;
 int ___sym_mfree (int ,void*,int) ;
 int printf (char*,char*,int,void*) ;

__attribute__((used)) static void __sym_mfree(m_pool_p mp, void *ptr, int size, char *name)
{
 if (DEBUG_FLAGS & DEBUG_ALLOC)
  printf ("freeing %-10s[%4d] @%p.\n", name, size, ptr);

 ___sym_mfree(mp, ptr, size);
}
