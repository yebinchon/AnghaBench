
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 amap_get(void *ptr, u32 dw_offset, u32 mask, u32 offset)
{
 u32 *dw = ptr;
 return mask & (*(dw + dw_offset) >> offset);
}
