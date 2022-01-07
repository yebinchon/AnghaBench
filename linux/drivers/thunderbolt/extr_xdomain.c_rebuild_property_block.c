
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 int tb_property_format_dir (int ,int*,int) ;
 int* xdomain_property_block ;
 int xdomain_property_block_gen ;
 int xdomain_property_block_len ;
 int xdomain_property_dir ;

__attribute__((used)) static int rebuild_property_block(void)
{
 u32 *block, len;
 int ret;

 ret = tb_property_format_dir(xdomain_property_dir, ((void*)0), 0);
 if (ret < 0)
  return ret;

 len = ret;

 block = kcalloc(len, sizeof(u32), GFP_KERNEL);
 if (!block)
  return -ENOMEM;

 ret = tb_property_format_dir(xdomain_property_dir, block, len);
 if (ret) {
  kfree(block);
  return ret;
 }

 kfree(xdomain_property_block);
 xdomain_property_block = block;
 xdomain_property_block_len = len;
 xdomain_property_block_gen++;

 return 0;
}
