
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int synth_buffer_add (scalar_t__ const) ;

void synth_putws(const u16 *buf)
{
 const u16 *p;

 for (p = buf; *p; p++)
  synth_buffer_add(*p);
}
