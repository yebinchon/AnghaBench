
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int EFUSE_MAP_LEN_88E ;
 int efuse_ReadEFuse (struct adapter*,int ,int ,int ,int *) ;
 int efuse_power_switch (struct adapter*,int,int) ;

__attribute__((used)) static void Efuse_ReadAllMap(struct adapter *pAdapter, u8 efuseType, u8 *Efuse)
{
 efuse_power_switch(pAdapter, 0, 1);

 efuse_ReadEFuse(pAdapter, efuseType, 0, EFUSE_MAP_LEN_88E, Efuse);

 efuse_power_switch(pAdapter, 0, 0);
}
