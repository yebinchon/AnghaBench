
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_resource {int base; int length; struct pci_resource* next; } ;
struct controller {struct pci_resource* bus_head; struct pci_resource* io_head; struct pci_resource* p_mem_head; struct pci_resource* mem_head; } ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static int show_ctrl(struct controller *ctrl, char *buf)
{
 char *out = buf;
 int index;
 struct pci_resource *res;

 out += sprintf(buf, "Free resources: memory\n");
 index = 11;
 res = ctrl->mem_head;
 while (res && index--) {
  out += sprintf(out, "start = %8.8x, length = %8.8x\n", res->base, res->length);
  res = res->next;
 }
 out += sprintf(out, "Free resources: prefetchable memory\n");
 index = 11;
 res = ctrl->p_mem_head;
 while (res && index--) {
  out += sprintf(out, "start = %8.8x, length = %8.8x\n", res->base, res->length);
  res = res->next;
 }
 out += sprintf(out, "Free resources: IO\n");
 index = 11;
 res = ctrl->io_head;
 while (res && index--) {
  out += sprintf(out, "start = %8.8x, length = %8.8x\n", res->base, res->length);
  res = res->next;
 }
 out += sprintf(out, "Free resources: bus numbers\n");
 index = 11;
 res = ctrl->bus_head;
 while (res && index--) {
  out += sprintf(out, "start = %8.8x, length = %8.8x\n", res->base, res->length);
  res = res->next;
 }

 return out - buf;
}
