
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MBAR0_SWA_SIZE ;
 scalar_t__ asd_mem_offs_swa () ;

__attribute__((used)) static inline u32 asd_mem_offs_swc(void)
{
 return asd_mem_offs_swa() + MBAR0_SWA_SIZE;
}
