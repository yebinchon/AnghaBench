
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* nodename; } ;


 int ENOMEM ;
 int PCI_VENDOR_ID_INTEL ;
 int rebuild_property_block () ;
 int tb_property_add_immediate (int *,char*,int) ;
 int tb_property_add_text (int *,char*,char*) ;
 int * tb_property_create_dir (int *) ;
 int tb_property_free_dir (int *) ;
 TYPE_1__* utsname () ;
 int * xdomain_property_dir ;

int tb_xdomain_init(void)
{
 int ret;

 xdomain_property_dir = tb_property_create_dir(((void*)0));
 if (!xdomain_property_dir)
  return -ENOMEM;






 tb_property_add_immediate(xdomain_property_dir, "vendorid",
      PCI_VENDOR_ID_INTEL);
 tb_property_add_text(xdomain_property_dir, "vendorid", "Intel Corp.");
 tb_property_add_immediate(xdomain_property_dir, "deviceid", 0x1);
 tb_property_add_text(xdomain_property_dir, "deviceid",
        utsname()->nodename);
 tb_property_add_immediate(xdomain_property_dir, "devicerv", 0x80000100);

 ret = rebuild_property_block();
 if (ret) {
  tb_property_free_dir(xdomain_property_dir);
  xdomain_property_dir = ((void*)0);
 }

 return ret;
}
