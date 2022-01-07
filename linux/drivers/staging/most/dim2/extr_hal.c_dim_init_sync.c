
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dim_channel {int dbr_size; scalar_t__ dbr_addr; int addr; } ;
struct TYPE_2__ {int fcnt; int dim_is_initialized; } ;


 int CAT_CT_VAL_SYNC ;
 scalar_t__ DBR_SIZE ;
 int DIM_ERR_BAD_CONFIG ;
 int DIM_ERR_DRIVER_NOT_INITIALIZED ;
 int DIM_INIT_ERR_CHANNEL_ADDRESS ;
 int DIM_INIT_ERR_OUT_OF_MEMORY ;
 int DIM_NO_ERROR ;
 scalar_t__ alloc_dbr (int) ;
 int check_bytes_per_frame (int) ;
 int check_channel_address (int) ;
 int dim2_clear_dbr (scalar_t__,int) ;
 int dim2_configure_channel (int ,int ,int ,scalar_t__,int,int ) ;
 TYPE_1__ g ;
 int sync_init (struct dim_channel*,int,int) ;

u8 dim_init_sync(struct dim_channel *ch, u8 is_tx, u16 ch_address,
   u16 bytes_per_frame)
{
 u16 bd_factor = g.fcnt + 2;

 if (!g.dim_is_initialized || !ch)
  return DIM_ERR_DRIVER_NOT_INITIALIZED;

 if (!check_channel_address(ch_address))
  return DIM_INIT_ERR_CHANNEL_ADDRESS;

 if (!check_bytes_per_frame(bytes_per_frame))
  return DIM_ERR_BAD_CONFIG;

 if (!ch->dbr_size)
  ch->dbr_size = bytes_per_frame << bd_factor;
 ch->dbr_addr = alloc_dbr(ch->dbr_size);
 if (ch->dbr_addr >= DBR_SIZE)
  return DIM_INIT_ERR_OUT_OF_MEMORY;

 sync_init(ch, ch_address / 2, bytes_per_frame);

 dim2_clear_dbr(ch->dbr_addr, ch->dbr_size);
 dim2_configure_channel(ch->addr, CAT_CT_VAL_SYNC, is_tx,
          ch->dbr_addr, ch->dbr_size, 0);

 return DIM_NO_ERROR;
}
