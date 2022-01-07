
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_mac_addr {int dummy; } ;


 int UWB_ADDR_MAC ;
 int uwb_rc_addr_get (struct uwb_rc*,struct uwb_mac_addr*,int ) ;

int uwb_rc_mac_addr_get(struct uwb_rc *rc,
   struct uwb_mac_addr *addr) {
 return uwb_rc_addr_get(rc, addr, UWB_ADDR_MAC);
}
