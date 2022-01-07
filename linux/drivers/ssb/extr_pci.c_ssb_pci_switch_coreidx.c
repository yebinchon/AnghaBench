
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ssb_bus {int host_pci; } ;


 int ENODEV ;
 int SSB_BAR0_MAX_RETRIES ;
 int SSB_BAR0_WIN ;
 int SSB_CORE_SIZE ;
 int SSB_ENUM_BASE ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;
 int pr_err (char*,int) ;
 int udelay (int) ;

int ssb_pci_switch_coreidx(struct ssb_bus *bus, u8 coreidx)
{
 int err;
 int attempts = 0;
 u32 cur_core;

 while (1) {
  err = pci_write_config_dword(bus->host_pci, SSB_BAR0_WIN,
          (coreidx * SSB_CORE_SIZE)
          + SSB_ENUM_BASE);
  if (err)
   goto error;
  err = pci_read_config_dword(bus->host_pci, SSB_BAR0_WIN,
         &cur_core);
  if (err)
   goto error;
  cur_core = (cur_core - SSB_ENUM_BASE)
      / SSB_CORE_SIZE;
  if (cur_core == coreidx)
   break;

  if (attempts++ > SSB_BAR0_MAX_RETRIES)
   goto error;
  udelay(10);
 }
 return 0;
error:
 pr_err("Failed to switch to core %u\n", coreidx);
 return -ENODEV;
}
