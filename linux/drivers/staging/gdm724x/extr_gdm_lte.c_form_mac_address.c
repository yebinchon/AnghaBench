
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int ETH_ALEN ;
 int eth_random_addr (scalar_t__*) ;
 int ether_addr_copy (scalar_t__*,scalar_t__*) ;
 scalar_t__* gdm_lte_macaddr ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static void form_mac_address(u8 *dev_addr, u8 *nic_src, u8 *nic_dest,
        u8 *mac_address, u8 index)
{

 if (!mac_address)
  ether_addr_copy(dev_addr, gdm_lte_macaddr);
 else
  ether_addr_copy(dev_addr, mac_address);




 dev_addr[ETH_ALEN - 1] += index;




 eth_random_addr(nic_src);
 memcpy(nic_src, dev_addr, 3);


 ether_addr_copy(nic_dest, dev_addr);
}
