
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* buff_in ;
 int* buff_out ;
 int* buffer_end ;
 int* synth_buffer ;

void synth_buffer_skip_nonlatin1(void)
{
 while (buff_out != buff_in) {
  if (*buff_out < 0x100)
   return;
  buff_out++;
  if (buff_out > buffer_end)
   buff_out = synth_buffer;
 }
}
