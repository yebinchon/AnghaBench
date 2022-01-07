
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int check_bytes_per_frame (int ) ;
 int norm_sync_buffer_size (int ,int ) ;

u16 dim_norm_sync_buffer_size(u16 buf_size, u16 bytes_per_frame)
{
 if (!check_bytes_per_frame(bytes_per_frame))
  return 0;

 return norm_sync_buffer_size(buf_size, bytes_per_frame);
}
