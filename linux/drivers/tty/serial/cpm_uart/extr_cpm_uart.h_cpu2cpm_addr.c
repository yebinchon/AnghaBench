
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_cpm_port {scalar_t__ mem_size; unsigned long dma_addr; int mem_addr; } ;


 int BUG () ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline unsigned long cpu2cpm_addr(void *addr,
                                         struct uart_cpm_port *pinfo)
{
 int offset;
 u32 val = (u32)addr;
 u32 mem = (u32)pinfo->mem_addr;

 if (likely(val >= mem && val < mem + pinfo->mem_size)) {
  offset = val - mem;
  return pinfo->dma_addr + offset;
 }

 BUG();
 return 0;
}
