
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int* adm; } ;


 int PAGE_SIZE ;
 TYPE_1__* ap_configuration ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t ap_control_domain_mask_show(struct bus_type *bus, char *buf)
{
 if (!ap_configuration)
  return snprintf(buf, PAGE_SIZE, "not supported\n");

 return snprintf(buf, PAGE_SIZE,
   "0x%08x%08x%08x%08x%08x%08x%08x%08x\n",
   ap_configuration->adm[0], ap_configuration->adm[1],
   ap_configuration->adm[2], ap_configuration->adm[3],
   ap_configuration->adm[4], ap_configuration->adm[5],
   ap_configuration->adm[6], ap_configuration->adm[7]);
}
