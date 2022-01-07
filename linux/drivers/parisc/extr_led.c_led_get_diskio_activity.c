
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_DISK_IO ;
 int NR_VM_EVENT_ITEMS ;
 size_t PGPGIN ;
 size_t PGPGOUT ;
 int all_vm_events (unsigned long*) ;

__attribute__((used)) static __inline__ int led_get_diskio_activity(void)
{
 static unsigned long last_pgpgin, last_pgpgout;
 unsigned long events[NR_VM_EVENT_ITEMS];
 int changed;

 all_vm_events(events);



 changed = (events[PGPGIN] != last_pgpgin) ||
    (events[PGPGOUT] != last_pgpgout);
 last_pgpgin = events[PGPGIN];
 last_pgpgout = events[PGPGOUT];

 return (changed ? LED_DISK_IO : 0);
}
