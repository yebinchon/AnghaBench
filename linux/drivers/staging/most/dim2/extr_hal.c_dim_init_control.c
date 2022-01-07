
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dim_channel {int dummy; } ;


 int CAT_CT_VAL_CONTROL ;
 int init_ctrl_async (struct dim_channel*,int ,int ,int ,int ) ;

u8 dim_init_control(struct dim_channel *ch, u8 is_tx, u16 ch_address,
      u16 max_buffer_size)
{
 return init_ctrl_async(ch, CAT_CT_VAL_CONTROL, is_tx, ch_address,
          max_buffer_size);
}
