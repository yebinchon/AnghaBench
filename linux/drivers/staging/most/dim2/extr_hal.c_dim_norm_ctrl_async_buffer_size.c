
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u16 ;


 scalar_t__ ADT1_CTRL_ASYNC_BD_MASK ;

u16 dim_norm_ctrl_async_buffer_size(u16 buf_size)
{
 u16 const max_size = (u16)ADT1_CTRL_ASYNC_BD_MASK + 1u;

 if (buf_size > max_size)
  return max_size;

 return buf_size;
}
