
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct qtnf_wmac {int dummy; } ;
struct qtnf_bus {struct qtnf_wmac** mac; } ;


 size_t QTNF_MAX_MAC ;
 int pr_err (char*,size_t) ;
 scalar_t__ unlikely (int) ;

struct qtnf_wmac *qtnf_core_get_mac(const struct qtnf_bus *bus, u8 macid)
{
 struct qtnf_wmac *mac = ((void*)0);

 if (unlikely(macid >= QTNF_MAX_MAC)) {
  pr_err("invalid MAC index %u\n", macid);
  return ((void*)0);
 }

 mac = bus->mac[macid];

 if (unlikely(!mac)) {
  pr_err("MAC%u: not initialized\n", macid);
  return ((void*)0);
 }

 return mac;
}
