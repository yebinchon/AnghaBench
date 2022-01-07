
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct dim_channel {int dbr_size; scalar_t__ addr; } ;
struct TYPE_4__ {scalar_t__ ch_addr; } ;
struct TYPE_6__ {TYPE_2__* dim2; TYPE_1__ atx_dbr; } ;
struct TYPE_5__ {int MIEN; } ;


 int CAT_CT_VAL_ASYNC ;
 int bit_mask (int) ;
 int dbrcnt_init (scalar_t__,int ) ;
 TYPE_3__ g ;
 scalar_t__ init_ctrl_async (struct dim_channel*,int ,scalar_t__,int ,int ) ;
 int writel (int ,int *) ;

u8 dim_init_async(struct dim_channel *ch, u8 is_tx, u16 ch_address,
    u16 max_buffer_size)
{
 u8 ret = init_ctrl_async(ch, CAT_CT_VAL_ASYNC, is_tx, ch_address,
     max_buffer_size);

 if (is_tx && !g.atx_dbr.ch_addr) {
  g.atx_dbr.ch_addr = ch->addr;
  dbrcnt_init(ch->addr, ch->dbr_size);
  writel(bit_mask(20), &g.dim2->MIEN);
 }

 return ret;
}
