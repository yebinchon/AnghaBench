
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ fb_get_options (char*,char**) ;
 int pci_register_driver (int *) ;
 int rivafb_driver ;
 int rivafb_setup (char*) ;

__attribute__((used)) static int rivafb_init(void)
{

 char *option = ((void*)0);

 if (fb_get_options("rivafb", &option))
  return -ENODEV;
 rivafb_setup(option);

 return pci_register_driver(&rivafb_driver);
}
