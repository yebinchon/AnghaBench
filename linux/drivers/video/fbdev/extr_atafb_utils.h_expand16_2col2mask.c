
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int* two2word ;

__attribute__((used)) static inline void expand16_2col2mask(u8 fg, u8 bg, u32 fgm[], u32 bgm[])
{
 bgm[0] = two2word[bg & 3];
 fgm[0] = two2word[fg & 3] ^ bgm[0];
}
