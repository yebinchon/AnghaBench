
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SIS_OH {struct SIS_OH* poh_next; } ;
struct SIS_HEAP {struct SIS_OH* poh_freelist; } ;



__attribute__((used)) static void
sisfb_free_node(struct SIS_HEAP *memheap, struct SIS_OH *poh)
{
 if(poh == ((void*)0))
  return;

 poh->poh_next = memheap->poh_freelist;
 memheap->poh_freelist = poh;
}
