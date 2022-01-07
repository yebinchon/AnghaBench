
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MISC_MAJOR ;
 int SYNTH_MINOR ;
 scalar_t__ misc_register (int *) ;
 int misc_registered ;
 int pr_info (char*,int ,int ) ;
 int pr_warn (char*) ;
 int synth_device ;

void speakup_register_devsynth(void)
{
 if (misc_registered != 0)
  return;

 if (misc_register(&synth_device)) {
  pr_warn("Couldn't initialize miscdevice /dev/synth.\n");
 } else {
  pr_info("initialized device: /dev/synth, node (MAJOR %d, MINOR %d)\n",
   MISC_MAJOR, SYNTH_MINOR);
  misc_registered = 1;
 }
}
