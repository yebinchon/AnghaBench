
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int ad7280a_devaddr(unsigned int addr)
{
 return ((addr & 0x1) << 4) |
        ((addr & 0x2) << 3) |
        (addr & 0x4) |
        ((addr & 0x8) >> 3) |
        ((addr & 0x10) >> 4);
}
