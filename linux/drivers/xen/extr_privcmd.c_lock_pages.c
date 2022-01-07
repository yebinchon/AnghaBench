
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct privcmd_dm_op_buf {scalar_t__ uptr; scalar_t__ size; } ;
struct page {int dummy; } ;


 unsigned int DIV_ROUND_UP (scalar_t__,int ) ;
 int ENOSPC ;
 int FOLL_WRITE ;
 int PAGE_SIZE ;
 int get_user_pages_fast (unsigned long,unsigned int,int ,struct page**) ;
 scalar_t__ offset_in_page (scalar_t__) ;

__attribute__((used)) static int lock_pages(
 struct privcmd_dm_op_buf kbufs[], unsigned int num,
 struct page *pages[], unsigned int nr_pages)
{
 unsigned int i;

 for (i = 0; i < num; i++) {
  unsigned int requested;
  int pinned;

  requested = DIV_ROUND_UP(
   offset_in_page(kbufs[i].uptr) + kbufs[i].size,
   PAGE_SIZE);
  if (requested > nr_pages)
   return -ENOSPC;

  pinned = get_user_pages_fast(
   (unsigned long) kbufs[i].uptr,
   requested, FOLL_WRITE, pages);
  if (pinned < 0)
   return pinned;

  nr_pages -= pinned;
  pages += pinned;
 }

 return 0;
}
