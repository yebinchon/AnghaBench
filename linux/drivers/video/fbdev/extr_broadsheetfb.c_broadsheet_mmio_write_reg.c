
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* mmio_write ) (struct broadsheetfb_par*,int ,int ) ;} ;


 int BS_CMD_WR_REG ;
 int BS_MMIO_CMD ;
 int BS_MMIO_DATA ;
 int stub1 (struct broadsheetfb_par*,int ,int ) ;
 int stub2 (struct broadsheetfb_par*,int ,int ) ;
 int stub3 (struct broadsheetfb_par*,int ,int ) ;

__attribute__((used)) static void broadsheet_mmio_write_reg(struct broadsheetfb_par *par, u16 reg,
     u16 data)
{
 par->board->mmio_write(par, BS_MMIO_CMD, BS_CMD_WR_REG);
 par->board->mmio_write(par, BS_MMIO_DATA, reg);
 par->board->mmio_write(par, BS_MMIO_DATA, data);

}
