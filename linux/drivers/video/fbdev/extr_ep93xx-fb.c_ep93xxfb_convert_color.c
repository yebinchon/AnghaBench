
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ep93xxfb_convert_color(int val, int width)
{
 return ((val << width) + 0x7fff - val) >> 16;
}
