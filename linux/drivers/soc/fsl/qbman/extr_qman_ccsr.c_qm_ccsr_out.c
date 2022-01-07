
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int iowrite32be (int,scalar_t__) ;
 scalar_t__ qm_ccsr_start ;

__attribute__((used)) static inline void qm_ccsr_out(u32 offset, u32 val)
{
 iowrite32be(val, qm_ccsr_start + offset/4);
}
