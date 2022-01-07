
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dim_channel {int dbr_size; scalar_t__ dbr_addr; int addr; } ;
struct TYPE_2__ {int dim_is_initialized; } ;


 int CAT_CT_VAL_ISOC ;
 scalar_t__ DBR_SIZE ;
 int DIM_ERR_BAD_CONFIG ;
 int DIM_ERR_DRIVER_NOT_INITIALIZED ;
 int DIM_INIT_ERR_CHANNEL_ADDRESS ;
 int DIM_INIT_ERR_OUT_OF_MEMORY ;
 int DIM_NO_ERROR ;
 int ISOC_DBR_FACTOR ;
 scalar_t__ alloc_dbr (int) ;
 int check_channel_address (int) ;
 int check_packet_length (int) ;
 int dim2_configure_channel (int ,int ,int ,scalar_t__,int,int) ;
 TYPE_1__ g ;
 int isoc_init (struct dim_channel*,int,int) ;

u8 dim_init_isoc(struct dim_channel *ch, u8 is_tx, u16 ch_address,
   u16 packet_length)
{
 if (!g.dim_is_initialized || !ch)
  return DIM_ERR_DRIVER_NOT_INITIALIZED;

 if (!check_channel_address(ch_address))
  return DIM_INIT_ERR_CHANNEL_ADDRESS;

 if (!check_packet_length(packet_length))
  return DIM_ERR_BAD_CONFIG;

 if (!ch->dbr_size)
  ch->dbr_size = packet_length * ISOC_DBR_FACTOR;
 ch->dbr_addr = alloc_dbr(ch->dbr_size);
 if (ch->dbr_addr >= DBR_SIZE)
  return DIM_INIT_ERR_OUT_OF_MEMORY;

 isoc_init(ch, ch_address / 2, packet_length);

 dim2_configure_channel(ch->addr, CAT_CT_VAL_ISOC, is_tx, ch->dbr_addr,
          ch->dbr_size, packet_length);

 return DIM_NO_ERROR;
}
