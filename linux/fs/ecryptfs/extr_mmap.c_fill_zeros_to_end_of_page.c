
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int PAGE_SIZE ;
 int i_size_read (struct inode*) ;
 int zero_user_segment (struct page*,int,int) ;

__attribute__((used)) static int fill_zeros_to_end_of_page(struct page *page, unsigned int to)
{
 struct inode *inode = page->mapping->host;
 int end_byte_in_page;

 if ((i_size_read(inode) / PAGE_SIZE) != page->index)
  goto out;
 end_byte_in_page = i_size_read(inode) % PAGE_SIZE;
 if (to > end_byte_in_page)
  end_byte_in_page = to;
 zero_user_segment(page, end_byte_in_page, PAGE_SIZE);
out:
 return 0;
}
