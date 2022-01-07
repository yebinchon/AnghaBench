
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dim_channel {scalar_t__ dbr_addr; scalar_t__ dbr_size; int addr; } ;
struct TYPE_2__ {int dim_is_initialized; } ;


 int DBR_BLOCK_SIZE ;
 scalar_t__ DBR_SIZE ;
 int DIM_ERR_DRIVER_NOT_INITIALIZED ;
 int DIM_INIT_ERR_CHANNEL_ADDRESS ;
 int DIM_INIT_ERR_OUT_OF_MEMORY ;
 int DIM_NO_ERROR ;
 scalar_t__ ROUND_UP_TO (int,int ) ;
 scalar_t__ alloc_dbr (scalar_t__) ;
 int channel_init (struct dim_channel*,int) ;
 int check_channel_address (int) ;
 int dim2_configure_channel (int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 TYPE_1__ g ;

__attribute__((used)) static u8 init_ctrl_async(struct dim_channel *ch, u8 type, u8 is_tx,
     u16 ch_address, u16 hw_buffer_size)
{
 if (!g.dim_is_initialized || !ch)
  return DIM_ERR_DRIVER_NOT_INITIALIZED;

 if (!check_channel_address(ch_address))
  return DIM_INIT_ERR_CHANNEL_ADDRESS;

 if (!ch->dbr_size)
  ch->dbr_size = ROUND_UP_TO(hw_buffer_size, DBR_BLOCK_SIZE);
 ch->dbr_addr = alloc_dbr(ch->dbr_size);
 if (ch->dbr_addr >= DBR_SIZE)
  return DIM_INIT_ERR_OUT_OF_MEMORY;

 channel_init(ch, ch_address / 2);

 dim2_configure_channel(ch->addr, type, is_tx,
          ch->dbr_addr, ch->dbr_size, 0);

 return DIM_NO_ERROR;
}
