
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 cxgbi_build_sw_tag(u32 idx, u32 age)
{

 return (idx << 16) | age;
}
