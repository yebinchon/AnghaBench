
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ extended_capabilities_len; int * extended_capabilities_mask; int * extended_capabilities; } ;
struct qtnf_wmac {TYPE_1__ macinfo; } ;


 int kfree (int *) ;

void qtnf_mac_ext_caps_free(struct qtnf_wmac *mac)
{
 if (mac->macinfo.extended_capabilities_len) {
  kfree(mac->macinfo.extended_capabilities);
  mac->macinfo.extended_capabilities = ((void*)0);

  kfree(mac->macinfo.extended_capabilities_mask);
  mac->macinfo.extended_capabilities_mask = ((void*)0);

  mac->macinfo.extended_capabilities_len = 0;
 }
}
