
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_block {int page_count; int * pagev; scalar_t__ sparity; int refs; } ;


 int kfree (struct scrub_block*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int scrub_page_put (int ) ;
 int scrub_parity_put (scalar_t__) ;

__attribute__((used)) static void scrub_block_put(struct scrub_block *sblock)
{
 if (refcount_dec_and_test(&sblock->refs)) {
  int i;

  if (sblock->sparity)
   scrub_parity_put(sblock->sparity);

  for (i = 0; i < sblock->page_count; i++)
   scrub_page_put(sblock->pagev[i]);
  kfree(sblock);
 }
}
