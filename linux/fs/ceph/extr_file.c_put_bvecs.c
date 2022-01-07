
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {scalar_t__ bv_page; } ;


 int kvfree (struct bio_vec*) ;
 int put_page (scalar_t__) ;
 int set_page_dirty_lock (scalar_t__) ;

__attribute__((used)) static void put_bvecs(struct bio_vec *bvecs, int num_bvecs, bool should_dirty)
{
 int i;

 for (i = 0; i < num_bvecs; i++) {
  if (bvecs[i].bv_page) {
   if (should_dirty)
    set_page_dirty_lock(bvecs[i].bv_page);
   put_page(bvecs[i].bv_page);
  }
 }
 kvfree(bvecs);
}
