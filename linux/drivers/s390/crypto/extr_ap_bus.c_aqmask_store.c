
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int aqm; } ;


 int AP_DOMAINS ;
 int ap_bus_revise_bindings () ;
 int ap_parse_mask_str (char const*,int ,int ,int *) ;
 TYPE_1__ ap_perms ;
 int ap_perms_mutex ;

__attribute__((used)) static ssize_t aqmask_store(struct bus_type *bus, const char *buf,
       size_t count)
{
 int rc;

 rc = ap_parse_mask_str(buf, ap_perms.aqm, AP_DOMAINS, &ap_perms_mutex);
 if (rc)
  return rc;

 ap_bus_revise_bindings();

 return count;
}
