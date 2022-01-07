
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erofs_sb_info {unsigned int max_sync_decompress_pages; } ;



__attribute__((used)) static bool should_decompress_synchronously(struct erofs_sb_info *sbi,
         unsigned int nr)
{
 return nr <= sbi->max_sync_decompress_pages;
}
