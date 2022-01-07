
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ bm_ccsr_start ;
 int ioread32be (scalar_t__) ;

__attribute__((used)) static inline u32 bm_ccsr_in(u32 offset)
{
 return ioread32be(bm_ccsr_start + offset/4);
}
