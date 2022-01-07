
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int* apm; } ;


 int PAGE_SIZE ;
 TYPE_1__* ap_configuration ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t ap_adapter_mask_show(struct bus_type *bus, char *buf)
{
 if (!ap_configuration)
  return snprintf(buf, PAGE_SIZE, "not supported\n");

 return snprintf(buf, PAGE_SIZE,
   "0x%08x%08x%08x%08x%08x%08x%08x%08x\n",
   ap_configuration->apm[0], ap_configuration->apm[1],
   ap_configuration->apm[2], ap_configuration->apm[3],
   ap_configuration->apm[4], ap_configuration->apm[5],
   ap_configuration->apm[6], ap_configuration->apm[7]);
}
