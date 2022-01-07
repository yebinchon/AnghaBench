
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ fb_get_options (char*,char**) ;
 int pci_register_driver (int *) ;
 int tc_register_driver (int *) ;
 int tgafb_pci_driver ;
 int tgafb_setup (char*) ;
 int tgafb_tc_driver ;

__attribute__((used)) static int tgafb_init(void)
{
 int status;

 char *option = ((void*)0);

 if (fb_get_options("tgafb", &option))
  return -ENODEV;
 tgafb_setup(option);

 status = pci_register_driver(&tgafb_pci_driver);
 if (!status)
  status = tc_register_driver(&tgafb_tc_driver);
 return status;
}
