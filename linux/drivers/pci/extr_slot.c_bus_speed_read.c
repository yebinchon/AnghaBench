
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef enum pci_bus_speed { ____Placeholder_pci_bus_speed } pci_bus_speed ;


 int ARRAY_SIZE (char**) ;
 char** pci_bus_speed_strings ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t bus_speed_read(enum pci_bus_speed speed, char *buf)
{
 const char *speed_string;

 if (speed < ARRAY_SIZE(pci_bus_speed_strings))
  speed_string = pci_bus_speed_strings[speed];
 else
  speed_string = "Unknown";

 return sprintf(buf, "%s\n", speed_string);
}
