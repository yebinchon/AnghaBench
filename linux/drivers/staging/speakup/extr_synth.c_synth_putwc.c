
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int synth_buffer_add (int ) ;

void synth_putwc(u16 wc)
{
 synth_buffer_add(wc);
}
