
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;


 size_t PAGE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int __GFP_FS ;
 int ceph_vinop (struct inode*) ;
 int dout (char*,struct inode*,int ,size_t,struct page*) ;
 struct page* find_or_create_page (struct address_space*,int ,int ) ;
 int flush_dcache_page (struct page*) ;
 scalar_t__ i_size_read (struct inode*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int mapping_gfp_constraint (struct address_space*,int ) ;
 int memcpy (void*,char*,size_t) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,size_t,size_t) ;

void ceph_fill_inline_data(struct inode *inode, struct page *locked_page,
      char *data, size_t len)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page;

 if (locked_page) {
  page = locked_page;
 } else {
  if (i_size_read(inode) == 0)
   return;
  page = find_or_create_page(mapping, 0,
        mapping_gfp_constraint(mapping,
        ~__GFP_FS));
  if (!page)
   return;
  if (PageUptodate(page)) {
   unlock_page(page);
   put_page(page);
   return;
  }
 }

 dout("fill_inline_data %p %llx.%llx len %zu locked_page %p\n",
      inode, ceph_vinop(inode), len, locked_page);

 if (len > 0) {
  void *kaddr = kmap_atomic(page);
  memcpy(kaddr, data, len);
  kunmap_atomic(kaddr);
 }

 if (page != locked_page) {
  if (len < PAGE_SIZE)
   zero_user_segment(page, len, PAGE_SIZE);
  else
   flush_dcache_page(page);

  SetPageUptodate(page);
  unlock_page(page);
  put_page(page);
 }
}
