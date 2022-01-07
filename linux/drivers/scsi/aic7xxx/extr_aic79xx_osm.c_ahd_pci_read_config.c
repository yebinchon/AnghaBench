
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ahd_dev_softc_t ;


 int panic (char*) ;
 int pci_read_config_byte (int ,int,int *) ;
 int pci_read_config_dword (int ,int,int *) ;
 int pci_read_config_word (int ,int,int *) ;

uint32_t
ahd_pci_read_config(ahd_dev_softc_t pci, int reg, int width)
{
 switch (width) {
 case 1:
 {
  uint8_t retval;

  pci_read_config_byte(pci, reg, &retval);
  return (retval);
 }
 case 2:
 {
  uint16_t retval;
  pci_read_config_word(pci, reg, &retval);
  return (retval);
 }
 case 4:
 {
  uint32_t retval;
  pci_read_config_dword(pci, reg, &retval);
  return (retval);
 }
 default:
  panic("ahd_pci_read_config: Read size too big");

  return (0);
 }
}
