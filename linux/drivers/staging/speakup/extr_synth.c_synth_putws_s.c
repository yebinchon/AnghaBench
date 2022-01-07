
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int synth_putws (int const*) ;
 int synth_start () ;

void synth_putws_s(const u16 *buf)
{
 synth_putws(buf);
 synth_start();
}
