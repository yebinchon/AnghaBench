
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int * two2word ;

__attribute__((used)) static inline void expand16_col2mask(u8 c, u32 m[])
{
 m[0] = two2word[c & 3];







}
