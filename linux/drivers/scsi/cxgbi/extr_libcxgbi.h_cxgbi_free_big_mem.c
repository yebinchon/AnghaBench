
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvfree (void*) ;

__attribute__((used)) static inline void cxgbi_free_big_mem(void *addr)
{
 kvfree(addr);
}
