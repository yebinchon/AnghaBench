
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_create_seq (char*,int,int *,int *) ;
 int tape_proc_devices ;
 int tape_proc_seq ;

void
tape_proc_init(void)
{
 tape_proc_devices = proc_create_seq("tapedevices", 0444, ((void*)0),
         &tape_proc_seq);
}
