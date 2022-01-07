
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pci_bus_speed { ____Placeholder_pci_bus_speed } pci_bus_speed ;


 int* agp_speeds ;

__attribute__((used)) static enum pci_bus_speed agp_speed(int agp3, int agpstat)
{
 int index = 0;

 if (agpstat & 4)
  index = 3;
 else if (agpstat & 2)
  index = 2;
 else if (agpstat & 1)
  index = 1;
 else
  goto out;

 if (agp3) {
  index += 2;
  if (index == 5)
   index = 0;
 }

 out:
 return agp_speeds[index];
}
