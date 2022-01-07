
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static void nvidia_chipset_set_brightness(int intensity)
{
 outb(0x04 | (intensity << 4), 0x52f);
 outb(0xbf, 0x52e);
}
