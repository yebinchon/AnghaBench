
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_midi {int dummy; } ;


 int f_midi_transmit (struct f_midi*) ;

__attribute__((used)) static void f_midi_in_tasklet(unsigned long data)
{
 struct f_midi *midi = (struct f_midi *) data;
 f_midi_transmit(midi);
}
