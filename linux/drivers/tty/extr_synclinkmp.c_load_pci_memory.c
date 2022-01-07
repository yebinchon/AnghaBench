
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SLMP_INFO ;


 int memcpy (char*,char const*,unsigned short) ;
 int read_status_reg (int *) ;
 unsigned short sca_pci_load_interval ;

__attribute__((used)) static void load_pci_memory(SLMP_INFO *info, char* dest, const char* src, unsigned short count)
{



 unsigned short interval = count / sca_pci_load_interval;
 unsigned short i;

 for ( i = 0 ; i < interval ; i++ )
 {
  memcpy(dest, src, sca_pci_load_interval);
  read_status_reg(info);
  dest += sca_pci_load_interval;
  src += sca_pci_load_interval;
 }

 memcpy(dest, src, count % sca_pci_load_interval);
}
