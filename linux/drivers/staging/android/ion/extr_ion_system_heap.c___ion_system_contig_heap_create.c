
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_heap {char* name; int type; int * ops; } ;


 int ENOMEM ;
 struct ion_heap* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int ION_HEAP_TYPE_SYSTEM_CONTIG ;
 int kmalloc_ops ;
 struct ion_heap* kzalloc (int,int ) ;

__attribute__((used)) static struct ion_heap *__ion_system_contig_heap_create(void)
{
 struct ion_heap *heap;

 heap = kzalloc(sizeof(*heap), GFP_KERNEL);
 if (!heap)
  return ERR_PTR(-ENOMEM);
 heap->ops = &kmalloc_ops;
 heap->type = ION_HEAP_TYPE_SYSTEM_CONTIG;
 heap->name = "ion_system_contig_heap";

 return heap;
}
