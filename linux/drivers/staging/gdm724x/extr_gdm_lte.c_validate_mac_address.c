
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int gdm_lte_macaddr ;
 scalar_t__ is_zero_ether_addr (int*) ;
 int memcpy (int*,int ,int) ;
 int pr_err (char*) ;

__attribute__((used)) static void validate_mac_address(u8 *mac_address)
{

 if (is_zero_ether_addr(mac_address) || (mac_address[0] & 0x01)) {
  pr_err("MAC invalid, restoring default\n");
  memcpy(mac_address, gdm_lte_macaddr, 6);
 }
}
