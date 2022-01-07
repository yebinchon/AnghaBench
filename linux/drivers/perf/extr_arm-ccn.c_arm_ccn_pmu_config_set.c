
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static void arm_ccn_pmu_config_set(u64 *config, u32 node_xp, u32 type, u32 port)
{
 *config &= ~((0xff << 0) | (0xff << 8) | (0x3 << 24));
 *config |= (node_xp << 0) | (type << 8) | (port << 24);
}
