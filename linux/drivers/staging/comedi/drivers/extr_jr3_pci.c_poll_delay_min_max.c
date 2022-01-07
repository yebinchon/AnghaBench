
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jr3_pci_poll_delay {int min; int max; } ;



__attribute__((used)) static struct jr3_pci_poll_delay poll_delay_min_max(int min, int max)
{
 struct jr3_pci_poll_delay result;

 result.min = min;
 result.max = max;
 return result;
}
