
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ bfi_image_ct ;

__attribute__((used)) static inline u32 *
bfi_image_ct_get_chunk(u32 off)
{
 return (u32 *)(bfi_image_ct + off);
}
