
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static u32 to_rgb(u16 red, u16 green, u16 blue)
{
 red >>= 8;
 green >>= 8;
 blue >>= 8;

 return (red << 16) | (green << 8) | blue;
}
