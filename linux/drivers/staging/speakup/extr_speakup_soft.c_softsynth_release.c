
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_deregister (int *) ;
 scalar_t__ misc_registered ;
 int pr_info (char*) ;
 int synth_device ;
 int synthu_device ;

__attribute__((used)) static void softsynth_release(void)
{
 misc_deregister(&synth_device);
 misc_deregister(&synthu_device);
 misc_registered = 0;
 pr_info("unregistered /dev/softsynth\n");
 pr_info("unregistered /dev/softsynthu\n");
}
