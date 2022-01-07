
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static inline void *alloc_smp_resp(int size)
{
 return kzalloc(size, GFP_KERNEL);
}
