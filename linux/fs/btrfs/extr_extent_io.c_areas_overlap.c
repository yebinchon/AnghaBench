
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool areas_overlap(unsigned long src, unsigned long dst, unsigned long len)
{
 unsigned long distance = (src > dst) ? src - dst : dst - src;
 return distance < len;
}
