
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mvs_info {int dummy; } ;
struct TYPE_2__ {int (* write_port_cfg_data ) (struct mvs_info*,int,int ) ;int (* write_port_cfg_addr ) (struct mvs_info*,int,int ) ;} ;


 TYPE_1__* MVS_CHIP_DISP ;
 int stub1 (struct mvs_info*,int,int ) ;
 int stub2 (struct mvs_info*,int,int ) ;
 int stub3 (struct mvs_info*,int,int ) ;
 int stub4 (struct mvs_info*,int,int ) ;

void mvs_set_sas_addr(struct mvs_info *mvi, int port_id, u32 off_lo,
        u32 off_hi, u64 sas_addr)
{
 u32 lo = (u32)sas_addr;
 u32 hi = (u32)(sas_addr>>32);

 MVS_CHIP_DISP->write_port_cfg_addr(mvi, port_id, off_lo);
 MVS_CHIP_DISP->write_port_cfg_data(mvi, port_id, lo);
 MVS_CHIP_DISP->write_port_cfg_addr(mvi, port_id, off_hi);
 MVS_CHIP_DISP->write_port_cfg_data(mvi, port_id, hi);
}
