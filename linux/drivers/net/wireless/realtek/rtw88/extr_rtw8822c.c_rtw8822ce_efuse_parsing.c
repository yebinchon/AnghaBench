
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtw_efuse {int addr; } ;
struct TYPE_2__ {int mac_addr; } ;
struct rtw8822c_efuse {TYPE_1__ e; } ;


 int ether_addr_copy (int ,int ) ;

__attribute__((used)) static void rtw8822ce_efuse_parsing(struct rtw_efuse *efuse,
        struct rtw8822c_efuse *map)
{
 ether_addr_copy(efuse->addr, map->e.mac_addr);
}
