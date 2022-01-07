
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 int MVS_P0_CFG_DATA ;
 int MVS_P4_CFG_DATA ;
 int mvs_read_port (struct mvs_info*,int ,int ,int ) ;

__attribute__((used)) static inline u32 mvs_read_port_cfg_data(struct mvs_info *mvi, u32 port)
{
 return mvs_read_port(mvi, MVS_P0_CFG_DATA,
   MVS_P4_CFG_DATA, port);
}
