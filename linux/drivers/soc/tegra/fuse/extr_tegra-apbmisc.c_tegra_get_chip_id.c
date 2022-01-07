
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int tegra_read_chipid () ;

u8 tegra_get_chip_id(void)
{
 return (tegra_read_chipid() >> 8) & 0xff;
}
