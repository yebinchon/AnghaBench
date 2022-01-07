
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ VHCI_HC_PORTS ;
 scalar_t__ array_index_nospec (scalar_t__,scalar_t__) ;
 int pr_err (char*,scalar_t__) ;
 scalar_t__ vhci_num_controllers ;

__attribute__((used)) static int valid_port(__u32 *pdev_nr, __u32 *rhport)
{
 if (*pdev_nr >= vhci_num_controllers) {
  pr_err("pdev %u\n", *pdev_nr);
  return 0;
 }
 *pdev_nr = array_index_nospec(*pdev_nr, vhci_num_controllers);

 if (*rhport >= VHCI_HC_PORTS) {
  pr_err("rhport %u\n", *rhport);
  return 0;
 }
 *rhport = array_index_nospec(*rhport, VHCI_HC_PORTS);

 return 1;
}
