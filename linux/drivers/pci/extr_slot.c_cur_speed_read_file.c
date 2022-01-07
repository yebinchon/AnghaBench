
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_slot {TYPE_1__* bus; } ;
typedef int ssize_t ;
struct TYPE_2__ {int cur_bus_speed; } ;


 int bus_speed_read (int ,char*) ;

__attribute__((used)) static ssize_t cur_speed_read_file(struct pci_slot *slot, char *buf)
{
 return bus_speed_read(slot->bus->cur_bus_speed, buf);
}
