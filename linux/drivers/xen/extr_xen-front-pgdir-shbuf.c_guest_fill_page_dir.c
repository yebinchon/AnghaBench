
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_page_directory {int gref; int gref_dir_next_page; } ;
struct xen_front_pgdir_shbuf {unsigned char* directory; int num_pages; int * grefs; } ;
typedef int grant_ref_t ;


 int GRANT_INVALID_REF ;
 int PAGE_SIZE ;
 int XEN_NUM_GREFS_PER_PAGE ;
 int get_num_pages_dir (struct xen_front_pgdir_shbuf*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void guest_fill_page_dir(struct xen_front_pgdir_shbuf *buf)
{
 unsigned char *ptr;
 int cur_gref, grefs_left, to_copy, i, num_pages_dir;

 ptr = buf->directory;
 num_pages_dir = get_num_pages_dir(buf);





 cur_gref = num_pages_dir;
 grefs_left = buf->num_pages;
 for (i = 0; i < num_pages_dir; i++) {
  struct xen_page_directory *page_dir =
   (struct xen_page_directory *)ptr;

  if (grefs_left <= XEN_NUM_GREFS_PER_PAGE) {
   to_copy = grefs_left;
   page_dir->gref_dir_next_page = GRANT_INVALID_REF;
  } else {
   to_copy = XEN_NUM_GREFS_PER_PAGE;
   page_dir->gref_dir_next_page = buf->grefs[i + 1];
  }
  memcpy(&page_dir->gref, &buf->grefs[cur_gref],
         to_copy * sizeof(grant_ref_t));
  ptr += PAGE_SIZE;
  grefs_left -= to_copy;
  cur_gref += to_copy;
 }
}
