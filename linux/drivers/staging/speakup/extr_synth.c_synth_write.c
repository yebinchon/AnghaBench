
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int synth_buffer_add (int ) ;
 int synth_start () ;

void synth_write(const char *buf, size_t count)
{
 while (count--)
  synth_buffer_add(*buf++);
 synth_start();
}
