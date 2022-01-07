
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bfa_port_stats_u {int dummy; } bfa_port_stats_u ;
typedef int u32 ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_ROUNDUP (int,int ) ;

u32
bfa_port_meminfo(void)
{
 return BFA_ROUNDUP(sizeof(union bfa_port_stats_u), BFA_DMA_ALIGN_SZ);
}
