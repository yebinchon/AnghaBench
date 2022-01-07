
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_mac_addr {int data; } ;


 int uwb_mac_addr_cmp (struct uwb_mac_addr const*,struct uwb_mac_addr*) ;

__attribute__((used)) static inline int uwb_mac_addr_bcast(const struct uwb_mac_addr *addr)
{
 struct uwb_mac_addr bcast = {
  .data = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff }
 };
 return !uwb_mac_addr_cmp(addr, &bcast);
}
