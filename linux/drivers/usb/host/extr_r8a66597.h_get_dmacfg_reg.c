
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DMA0CFG ;
 unsigned long DMA1CFG ;

__attribute__((used)) static inline unsigned long get_dmacfg_reg(int port)
{
 return port == 0 ? DMA0CFG : DMA1CFG;
}
