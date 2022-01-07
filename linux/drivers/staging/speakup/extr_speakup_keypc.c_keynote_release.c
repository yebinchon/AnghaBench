
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYNTH_IO_EXTENT ;
 int spk_stop_serial_interrupt () ;
 scalar_t__ synth_port ;
 int synth_release_region (scalar_t__,int ) ;

__attribute__((used)) static void keynote_release(void)
{
 spk_stop_serial_interrupt();
 if (synth_port)
  synth_release_region(synth_port, SYNTH_IO_EXTENT);
 synth_port = 0;
}
