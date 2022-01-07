
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dim_channel {scalar_t__ done_sw_buffers_number; scalar_t__ bytes_per_frame; int packet_length; int addr; int state; } ;


 int state_init (int *) ;

__attribute__((used)) static void isoc_init(struct dim_channel *ch, u8 ch_addr, u16 packet_length)
{
 state_init(&ch->state);

 ch->addr = ch_addr;

 ch->packet_length = packet_length;
 ch->bytes_per_frame = 0;
 ch->done_sw_buffers_number = 0;
}
