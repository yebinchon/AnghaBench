
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_page_directory {int gref_dir_next_page; } ;
struct xen_front_pgdir_shbuf {unsigned char* directory; int * grefs; } ;


 int GRANT_INVALID_REF ;
 int PAGE_SIZE ;
 int get_num_pages_dir (struct xen_front_pgdir_shbuf*) ;

__attribute__((used)) static void backend_fill_page_dir(struct xen_front_pgdir_shbuf *buf)
{
 struct xen_page_directory *page_dir;
 unsigned char *ptr;
 int i, num_pages_dir;

 ptr = buf->directory;
 num_pages_dir = get_num_pages_dir(buf);


 for (i = 0; i < num_pages_dir - 1; i++) {
  page_dir = (struct xen_page_directory *)ptr;

  page_dir->gref_dir_next_page = buf->grefs[i + 1];
  ptr += PAGE_SIZE;
 }

 page_dir = (struct xen_page_directory *)ptr;
 page_dir->gref_dir_next_page = GRANT_INVALID_REF;
}
