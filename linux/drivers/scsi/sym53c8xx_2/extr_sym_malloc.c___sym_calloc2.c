
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_pool_p ;


 int DEBUG_ALLOC ;
 int DEBUG_FLAGS ;
 int SYM_MEM_WARN ;
 void* ___sym_malloc (int ,int) ;
 int memset (void*,int ,int) ;
 int printf (char*,char*,int,...) ;

__attribute__((used)) static void *__sym_calloc2(m_pool_p mp, int size, char *name, int uflags)
{
 void *p;

 p = ___sym_malloc(mp, size);

 if (DEBUG_FLAGS & DEBUG_ALLOC) {
  printf ("new %-10s[%4d] @%p.\n", name, size, p);
 }

 if (p)
  memset(p, 0, size);
 else if (uflags & SYM_MEM_WARN)
  printf ("__sym_calloc2: failed to allocate %s[%d]\n", name, size);
 return p;
}
