
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 int MVS_P0_VSR_ADDR ;
 int MVS_P4_VSR_ADDR ;
 int mdelay (int) ;
 int mvs_write_port (struct mvs_info*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void mvs_write_port_vsr_addr(struct mvs_info *mvi,
      u32 port, u32 addr)
{
 mvs_write_port(mvi, MVS_P0_VSR_ADDR,
   MVS_P4_VSR_ADDR, port, addr);
 mdelay(10);
}
