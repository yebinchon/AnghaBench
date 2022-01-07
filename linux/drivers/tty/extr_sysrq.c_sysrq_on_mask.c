
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sysrq_always_enabled ;
 int sysrq_enabled ;

__attribute__((used)) static bool sysrq_on_mask(int mask)
{
 return sysrq_always_enabled ||
        sysrq_enabled == 1 ||
        (sysrq_enabled & mask);
}
