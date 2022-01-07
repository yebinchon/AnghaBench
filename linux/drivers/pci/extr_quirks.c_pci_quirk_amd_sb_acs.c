
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int bus; int multifunction; } ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int PCI_ACS_CR ;
 int PCI_ACS_DT ;
 int PCI_ACS_EC ;
 int PCI_ACS_RR ;
 int acpi_get_table (char*,int ,struct acpi_table_header**) ;
 int pci_is_root_bus (int ) ;

__attribute__((used)) static int pci_quirk_amd_sb_acs(struct pci_dev *dev, u16 acs_flags)
{
 return -ENODEV;

}
