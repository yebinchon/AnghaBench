
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_property_dir {int dummy; } ;
typedef size_t ssize_t ;


 size_t __tb_property_format_dir (struct tb_property_dir const*,int *,int ,size_t) ;
 size_t tb_property_dir_length (struct tb_property_dir const*,int,size_t*) ;

ssize_t tb_property_format_dir(const struct tb_property_dir *dir, u32 *block,
          size_t block_len)
{
 ssize_t ret;

 if (!block) {
  size_t dir_len, data_len = 0;

  dir_len = tb_property_dir_length(dir, 1, &data_len);
  return dir_len + data_len;
 }

 ret = __tb_property_format_dir(dir, block, 0, block_len);
 return ret < 0 ? ret : 0;
}
