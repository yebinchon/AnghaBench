
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dim_channel {int dummy; } ;


 int DIM_ERR_DRIVER_NOT_INITIALIZED ;
 int channel_start (struct dim_channel*,int ,int ) ;
 int dim_on_error (int ,char*) ;

bool dim_enqueue_buffer(struct dim_channel *ch, u32 buffer_addr,
   u16 buffer_size)
{
 if (!ch)
  return dim_on_error(DIM_ERR_DRIVER_NOT_INITIALIZED,
        "Bad channel");

 return channel_start(ch, buffer_addr, buffer_size);
}
