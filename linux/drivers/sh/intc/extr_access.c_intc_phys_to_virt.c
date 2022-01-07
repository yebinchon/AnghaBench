
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_window {unsigned long phys; unsigned long size; scalar_t__ virt; } ;
struct intc_desc_int {int nr_windows; struct intc_window* window; } ;



unsigned long intc_phys_to_virt(struct intc_desc_int *d, unsigned long address)
{
 struct intc_window *window;
 int k;


 for (k = 0; k < d->nr_windows; k++) {
  window = d->window + k;

  if (address < window->phys)
   continue;

  if (address >= (window->phys + window->size))
   continue;

  address -= window->phys;
  address += (unsigned long)window->virt;

  return address;
 }


 return address;
}
