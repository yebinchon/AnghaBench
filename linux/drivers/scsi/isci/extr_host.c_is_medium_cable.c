
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_medium_cable(int phy, unsigned char selection_byte)
{
 return !!(selection_byte & (1 << (phy + 4)));
}
