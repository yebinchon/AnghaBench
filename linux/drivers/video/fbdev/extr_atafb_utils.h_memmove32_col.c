
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void memmove32_col(void *dst, void *src, u32 mask, u32 h, u32 bytes)
{
 u32 *s, *d, v;

        s = src;
        d = dst;
        do {
                v = (*s++ & mask) | (*d & ~mask);
                *d++ = v;
                d = (u32 *)((u8 *)d + bytes);
                s = (u32 *)((u8 *)s + bytes);
        } while (--h);
}
