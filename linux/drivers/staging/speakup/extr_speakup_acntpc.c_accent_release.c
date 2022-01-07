
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port_tts; } ;


 int SYNTH_IO_EXTENT ;
 TYPE_1__ speakup_info ;
 int spk_stop_serial_interrupt () ;
 int synth_release_region (scalar_t__,int ) ;

__attribute__((used)) static void accent_release(void)
{
 spk_stop_serial_interrupt();
 if (speakup_info.port_tts)
  synth_release_region(speakup_info.port_tts - 1,
         SYNTH_IO_EXTENT);
 speakup_info.port_tts = 0;
}
