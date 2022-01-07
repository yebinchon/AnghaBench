
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int loff_t ;


 int __block_write_begin (struct page*,int ,unsigned int,int ) ;
 int ext2_get_block ;

__attribute__((used)) static int ext2_prepare_chunk(struct page *page, loff_t pos, unsigned len)
{
 return __block_write_begin(page, pos, len, ext2_get_block);
}
