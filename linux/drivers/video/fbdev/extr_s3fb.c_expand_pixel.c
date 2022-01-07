
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 expand_pixel(u32 c)
{
 return (((c & 1) << 24) | ((c & 2) << 27) | ((c & 4) << 14) | ((c & 8) << 17) |
  ((c & 16) << 4) | ((c & 32) << 7) | ((c & 64) >> 6) | ((c & 128) >> 3)) * 0xF;
}
