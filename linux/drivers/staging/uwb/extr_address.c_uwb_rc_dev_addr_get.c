
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_dev_addr {int dummy; } ;


 int UWB_ADDR_DEV ;
 int uwb_rc_addr_get (struct uwb_rc*,struct uwb_dev_addr*,int ) ;

int uwb_rc_dev_addr_get(struct uwb_rc *rc,
   struct uwb_dev_addr *addr) {
 return uwb_rc_addr_get(rc, addr, UWB_ADDR_DEV);
}
