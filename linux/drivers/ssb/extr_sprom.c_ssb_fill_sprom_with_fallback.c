
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_sprom {int dummy; } ;
struct ssb_bus {int dummy; } ;


 int ENOENT ;
 int get_fallback_sprom (struct ssb_bus*,struct ssb_sprom*) ;

int ssb_fill_sprom_with_fallback(struct ssb_bus *bus, struct ssb_sprom *out)
{
 if (!get_fallback_sprom)
  return -ENOENT;

 return get_fallback_sprom(bus, out);
}
