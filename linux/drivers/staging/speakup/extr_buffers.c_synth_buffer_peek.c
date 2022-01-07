
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int * buff_in ;
 int * buff_out ;

u16 synth_buffer_peek(void)
{
 if (buff_out == buff_in)
  return 0;
 return *buff_out;
}
