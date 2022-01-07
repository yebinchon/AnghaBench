
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ali_lock ;
 int ali_pci ;
 int ali_timeout_bits ;
 int pci_read_config_dword (int ,int,int*) ;
 int pci_write_config_dword (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ali_start(void)
{
 u32 val;

 spin_lock(&ali_lock);

 pci_read_config_dword(ali_pci, 0xCC, &val);
 val &= ~0x3F;
 val |= (1 << 25) | ali_timeout_bits;
 pci_write_config_dword(ali_pci, 0xCC, val);

 spin_unlock(&ali_lock);
}
