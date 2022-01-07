
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_NOWARN ;
 void* kzalloc (unsigned int,int) ;
 void* vzalloc (unsigned int) ;

__attribute__((used)) static inline void *cxgbi_alloc_big_mem(unsigned int size,
     gfp_t gfp)
{
 void *p = kzalloc(size, gfp | __GFP_NOWARN);

 if (!p)
  p = vzalloc(size);

 return p;
}
