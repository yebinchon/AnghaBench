
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_property_rootdir_entry {scalar_t__ magic; size_t length; } ;
struct tb_property_dir {int dummy; } ;


 scalar_t__ TB_PROPERTY_ROOTDIR_MAGIC ;
 struct tb_property_dir* __tb_property_parse_dir (int const*,size_t,int ,size_t,int) ;

struct tb_property_dir *tb_property_parse_dir(const u32 *block,
           size_t block_len)
{
 const struct tb_property_rootdir_entry *rootdir =
  (const struct tb_property_rootdir_entry *)block;

 if (rootdir->magic != TB_PROPERTY_ROOTDIR_MAGIC)
  return ((void*)0);
 if (rootdir->length > block_len)
  return ((void*)0);

 return __tb_property_parse_dir(block, block_len, 0, rootdir->length,
           1);
}
