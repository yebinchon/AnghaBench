
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ fb_get_options (char*,char**) ;
 int nvidiafb_driver ;
 int nvidiafb_setup (char*) ;
 int pci_register_driver (int *) ;

__attribute__((used)) static int nvidiafb_init(void)
{

 char *option = ((void*)0);

 if (fb_get_options("nvidiafb", &option))
  return -ENODEV;
 nvidiafb_setup(option);

 return pci_register_driver(&nvidiafb_driver);
}
