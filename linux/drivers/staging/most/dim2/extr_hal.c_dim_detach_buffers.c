
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dim_channel {int dummy; } ;


 int DIM_ERR_DRIVER_NOT_INITIALIZED ;
 int channel_detach_buffers (struct dim_channel*,int ) ;
 int dim_on_error (int ,char*) ;

bool dim_detach_buffers(struct dim_channel *ch, u16 buffers_number)
{
 if (!ch)
  return dim_on_error(DIM_ERR_DRIVER_NOT_INITIALIZED,
        "Bad channel");

 return channel_detach_buffers(ch, buffers_number);
}
