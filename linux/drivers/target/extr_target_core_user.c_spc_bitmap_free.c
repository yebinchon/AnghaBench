
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t bitmap_weight (unsigned long*,size_t) ;

__attribute__((used)) static inline size_t spc_bitmap_free(unsigned long *bitmap, uint32_t thresh)
{
 return thresh - bitmap_weight(bitmap, thresh);
}
