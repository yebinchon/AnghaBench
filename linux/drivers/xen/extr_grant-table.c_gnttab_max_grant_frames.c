
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __max_nr_grant_frames () ;

unsigned int gnttab_max_grant_frames(void)
{
 unsigned int xen_max = __max_nr_grant_frames();
 static unsigned int boot_max_nr_grant_frames;


 if (!boot_max_nr_grant_frames)
  boot_max_nr_grant_frames = __max_nr_grant_frames();

 if (xen_max > boot_max_nr_grant_frames)
  return boot_max_nr_grant_frames;
 return xen_max;
}
