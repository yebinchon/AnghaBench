
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 int MVS_P0_INT_STAT ;
 int MVS_P4_INT_STAT ;
 int mvs_write_port (struct mvs_info*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void mvs_write_port_irq_stat(struct mvs_info *mvi,
      u32 port, u32 val)
{
 mvs_write_port(mvi, MVS_P0_INT_STAT,
   MVS_P4_INT_STAT, port, val);
}
