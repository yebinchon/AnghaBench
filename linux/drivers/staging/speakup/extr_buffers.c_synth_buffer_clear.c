
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* buff_in ;
 void* buff_out ;
 void* synth_buffer ;

void synth_buffer_clear(void)
{
 buff_in = synth_buffer;
 buff_out = synth_buffer;
}
