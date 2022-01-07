
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ioread32be (scalar_t__) ;
 scalar_t__ qm_ccsr_start ;

__attribute__((used)) static inline u32 qm_ccsr_in(u32 offset)
{
 return ioread32be(qm_ccsr_start + offset/4);
}
