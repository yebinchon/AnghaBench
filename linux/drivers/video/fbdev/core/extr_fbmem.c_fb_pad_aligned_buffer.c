
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int __fb_pad_aligned_buffer (int *,int ,int *,int ,int ) ;

void fb_pad_aligned_buffer(u8 *dst, u32 d_pitch, u8 *src, u32 s_pitch, u32 height)
{
 __fb_pad_aligned_buffer(dst, d_pitch, src, s_pitch, height);
}
