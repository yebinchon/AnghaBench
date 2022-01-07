
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dim_channel {int dummy; } ;
struct TYPE_2__ {int dim_is_initialized; } ;


 int DIM_ERR_DRIVER_NOT_INITIALIZED ;
 int channel_service (struct dim_channel*) ;
 TYPE_1__ g ;

u8 dim_service_channel(struct dim_channel *ch)
{
 if (!g.dim_is_initialized || !ch)
  return DIM_ERR_DRIVER_NOT_INITIALIZED;

 return channel_service(ch);
}
