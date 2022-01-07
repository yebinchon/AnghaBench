
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct dim_channel {scalar_t__ addr; scalar_t__ dbr_addr; int dbr_size; } ;
struct TYPE_5__ {scalar_t__ ch_addr; } ;
struct TYPE_6__ {TYPE_2__ atx_dbr; TYPE_1__* dim2; int dim_is_initialized; } ;
struct TYPE_4__ {int MIEN; } ;


 scalar_t__ DBR_SIZE ;
 int DIM_ERR_DRIVER_NOT_INITIALIZED ;
 int DIM_NO_ERROR ;
 int dim2_clear_channel (scalar_t__) ;
 int free_dbr (scalar_t__,int ) ;
 TYPE_3__ g ;
 int writel (int ,int *) ;

u8 dim_destroy_channel(struct dim_channel *ch)
{
 if (!g.dim_is_initialized || !ch)
  return DIM_ERR_DRIVER_NOT_INITIALIZED;

 if (ch->addr == g.atx_dbr.ch_addr) {
  writel(0, &g.dim2->MIEN);
  g.atx_dbr.ch_addr = 0;
 }

 dim2_clear_channel(ch->addr);
 if (ch->dbr_addr < DBR_SIZE)
  free_dbr(ch->dbr_addr, ch->dbr_size);
 ch->dbr_addr = DBR_SIZE;

 return DIM_NO_ERROR;
}
