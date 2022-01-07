
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_chip {int usb; } ;


 int E2P_MAC_ADDR_P1 ;
 int ETH_ALEN ;
 int dev_dbg_f (int ,char*) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_usb_read_fw (int *,int ,int *,int ) ;

int zd_chip_read_mac_addr_fw(struct zd_chip *chip, u8 *addr)
{
 dev_dbg_f(zd_chip_dev(chip), "\n");
 return zd_usb_read_fw(&chip->usb, E2P_MAC_ADDR_P1, addr,
  ETH_ALEN);
}
