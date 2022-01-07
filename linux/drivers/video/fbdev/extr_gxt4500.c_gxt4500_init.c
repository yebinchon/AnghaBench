
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ fb_get_options (char*,int *) ;
 int gxt4500_driver ;
 int mode_option ;
 int pci_register_driver (int *) ;

__attribute__((used)) static int gxt4500_init(void)
{

 if (fb_get_options("gxt4500", &mode_option))
  return -ENODEV;


 return pci_register_driver(&gxt4500_driver);
}
