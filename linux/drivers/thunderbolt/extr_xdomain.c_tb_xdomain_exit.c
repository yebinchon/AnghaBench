
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int ) ;
 int tb_property_free_dir (int ) ;
 int xdomain_property_block ;
 int xdomain_property_dir ;

void tb_xdomain_exit(void)
{
 kfree(xdomain_property_block);
 tb_property_free_dir(xdomain_property_dir);
}
