
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port100_ack_frame {scalar_t__ start_frame; scalar_t__ ack_frame; } ;


 int PORT100_FRAME_ACK ;
 int PORT100_FRAME_SOF ;
 scalar_t__ cpu_to_be16 (int ) ;

__attribute__((used)) static bool port100_rx_frame_is_ack(struct port100_ack_frame *frame)
{
 return (frame->start_frame == cpu_to_be16(PORT100_FRAME_SOF) &&
  frame->ack_frame == cpu_to_be16(PORT100_FRAME_ACK));
}
