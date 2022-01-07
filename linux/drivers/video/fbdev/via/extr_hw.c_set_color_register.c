
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int outb (int,int) ;

__attribute__((used)) static void set_color_register(u8 index, u8 red, u8 green, u8 blue)
{
 outb(0xFF, 0x3C6);
 outb(index, 0x3C8);
 outb(red, 0x3C9);
 outb(green, 0x3C9);
 outb(blue, 0x3C9);
}
