
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __pnp_bios_read_escd (char*,int ) ;
 int pnpbios_print_status (char*,int) ;

int pnp_bios_read_escd(char *data, u32 nvram_base)
{
 int status;

 status = __pnp_bios_read_escd(data, nvram_base);
 if (status)
  pnpbios_print_status("read_escd", status);
 return status;
}
