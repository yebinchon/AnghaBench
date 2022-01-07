
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_deregister (int *) ;
 scalar_t__ misc_registered ;
 int pr_info (char*) ;
 int synth_device ;

void speakup_unregister_devsynth(void)
{
 if (!misc_registered)
  return;
 pr_info("speakup: unregistering synth device /dev/synth\n");
 misc_deregister(&synth_device);
 misc_registered = 0;
}
