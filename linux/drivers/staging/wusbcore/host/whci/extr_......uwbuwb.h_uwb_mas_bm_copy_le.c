
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_mas_bm {int bm; } ;


 int UWB_NUM_MAS ;
 int bitmap_copy_le (void*,int ,int ) ;

__attribute__((used)) static inline void uwb_mas_bm_copy_le(void *dst, const struct uwb_mas_bm *mas)
{
 bitmap_copy_le(dst, mas->bm, UWB_NUM_MAS);
}
