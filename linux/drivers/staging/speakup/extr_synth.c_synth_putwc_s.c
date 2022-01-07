
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int synth_buffer_add (int ) ;
 int synth_start () ;

void synth_putwc_s(u16 wc)
{
 synth_buffer_add(wc);
 synth_start();
}
