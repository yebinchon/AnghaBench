
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SIS_OHALLOC {struct SIS_OH* aoh; struct SIS_OHALLOC* poha_next; } ;
struct SIS_OH {struct SIS_OH* poh_next; } ;
struct SIS_HEAP {struct SIS_OH* poh_freelist; struct SIS_OHALLOC* poha_chain; } ;


 int GFP_KERNEL ;
 int SIS_OH_ALLOC_SIZE ;
 struct SIS_OHALLOC* kmalloc (int,int ) ;

__attribute__((used)) static struct SIS_OH *
sisfb_poh_new_node(struct SIS_HEAP *memheap)
{
 struct SIS_OHALLOC *poha;
 struct SIS_OH *poh;
 unsigned long cOhs;
 int i;

 if(memheap->poh_freelist == ((void*)0)) {
  poha = kmalloc(SIS_OH_ALLOC_SIZE, GFP_KERNEL);
  if(!poha)
   return ((void*)0);

  poha->poha_next = memheap->poha_chain;
  memheap->poha_chain = poha;

  cOhs = (SIS_OH_ALLOC_SIZE - sizeof(struct SIS_OHALLOC)) / sizeof(struct SIS_OH) + 1;

  poh = &poha->aoh[0];
  for(i = cOhs - 1; i != 0; i--) {
   poh->poh_next = poh + 1;
   poh = poh + 1;
  }

  poh->poh_next = ((void*)0);
  memheap->poh_freelist = &poha->aoh[0];
 }

 poh = memheap->poh_freelist;
 memheap->poh_freelist = poh->poh_next;

 return poh;
}
