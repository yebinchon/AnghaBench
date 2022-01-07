
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dim_channel {scalar_t__ done_sw_buffers_number; int bytes_per_frame; scalar_t__ packet_length; int addr; int state; } ;


 int state_init (int *) ;

__attribute__((used)) static void sync_init(struct dim_channel *ch, u8 ch_addr, u16 bytes_per_frame)
{
 state_init(&ch->state);

 ch->addr = ch_addr;

 ch->packet_length = 0;
 ch->bytes_per_frame = bytes_per_frame;
 ch->done_sw_buffers_number = 0;
}
