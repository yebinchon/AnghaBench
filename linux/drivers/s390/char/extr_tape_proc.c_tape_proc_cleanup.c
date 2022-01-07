
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remove_proc_entry (char*,int *) ;
 int * tape_proc_devices ;

void
tape_proc_cleanup(void)
{
 if (tape_proc_devices != ((void*)0))
  remove_proc_entry ("tapedevices", ((void*)0));
}
