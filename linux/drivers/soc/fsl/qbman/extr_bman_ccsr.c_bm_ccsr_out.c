
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ bm_ccsr_start ;
 int iowrite32be (int,scalar_t__) ;

__attribute__((used)) static inline void bm_ccsr_out(u32 offset, u32 val)
{
 iowrite32be(val, bm_ccsr_start + offset/4);
}
