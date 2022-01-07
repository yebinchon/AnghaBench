
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int pack_mb88341(int addr, int val, int *bitstring)
{
 addr++;
 *bitstring = ((addr & 0x1) << 11) |
     ((addr & 0x2) << 9) |
     ((addr & 0x4) << 7) | ((addr & 0x8) << 5) | (val & 0xff);
 return 12;
}
