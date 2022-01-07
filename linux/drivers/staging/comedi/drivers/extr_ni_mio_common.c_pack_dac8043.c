
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int pack_dac8043(int addr, int val, int *bitstring)
{
 *bitstring = val & 0xfff;
 return 12;
}
