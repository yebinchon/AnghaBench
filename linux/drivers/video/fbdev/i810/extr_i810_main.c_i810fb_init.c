
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ fb_get_options (char*,char**) ;
 int i810fb_driver ;
 int i810fb_setup (char*) ;
 int pci_register_driver (int *) ;

__attribute__((used)) static int i810fb_init(void)
{
 char *option = ((void*)0);

 if (fb_get_options("i810fb", &option))
  return -ENODEV;
 i810fb_setup(option);

 return pci_register_driver(&i810fb_driver);
}
