
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* mmio_write ) (struct broadsheetfb_par*,int ,int) ;} ;


 int BS_MMIO_DATA ;
 int stub1 (struct broadsheetfb_par*,int ,int) ;

__attribute__((used)) static void broadsheet_mmio_burst_write(struct broadsheetfb_par *par, int size,
       u16 *data)
{
 int i;
 u16 tmp;

 for (i = 0; i < size; i++) {
  tmp = (data[i] & 0x0F) << 4;
  tmp |= (data[i] & 0x0F00) << 4;
  par->board->mmio_write(par, BS_MMIO_DATA, tmp);
 }

}
