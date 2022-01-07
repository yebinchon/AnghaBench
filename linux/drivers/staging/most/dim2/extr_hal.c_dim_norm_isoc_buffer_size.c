
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int check_packet_length (int ) ;
 int norm_isoc_buffer_size (int ,int ) ;

u16 dim_norm_isoc_buffer_size(u16 buf_size, u16 packet_length)
{
 if (!check_packet_length(packet_length))
  return 0;

 return norm_isoc_buffer_size(buf_size, packet_length);
}
