
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rt2x00_dev {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int IS_ERR (char const*) ;
 int eth_random_addr (int *) ;
 int ether_addr_copy (int *,char const*) ;
 int is_valid_ether_addr (int *) ;
 char* of_get_mac_address (int ) ;
 int rt2x00_eeprom_dbg (struct rt2x00_dev*,char*,int *) ;

void rt2x00lib_set_mac_address(struct rt2x00_dev *rt2x00dev, u8 *eeprom_mac_addr)
{
 const char *mac_addr;

 mac_addr = of_get_mac_address(rt2x00dev->dev->of_node);
 if (!IS_ERR(mac_addr))
  ether_addr_copy(eeprom_mac_addr, mac_addr);

 if (!is_valid_ether_addr(eeprom_mac_addr)) {
  eth_random_addr(eeprom_mac_addr);
  rt2x00_eeprom_dbg(rt2x00dev, "MAC: %pM\n", eeprom_mac_addr);
 }
}
