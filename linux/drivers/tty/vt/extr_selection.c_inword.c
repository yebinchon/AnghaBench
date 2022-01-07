
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int const* inwordLut ;

__attribute__((used)) static inline int inword(const u32 c)
{
 return c > 0x7f || (( inwordLut[c>>5] >> (c & 0x1F) ) & 1);
}
