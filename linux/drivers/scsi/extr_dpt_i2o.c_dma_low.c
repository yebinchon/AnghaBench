
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;



__attribute__((used)) static inline u32 dma_low(dma_addr_t addr)
{
 return (u32)addr;
}
