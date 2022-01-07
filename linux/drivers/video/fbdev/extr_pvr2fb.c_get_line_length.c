
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long get_line_length(int xres_virtual, int bpp)
{
 return (unsigned long)((((xres_virtual*bpp)+31)&~31) >> 3);
}
