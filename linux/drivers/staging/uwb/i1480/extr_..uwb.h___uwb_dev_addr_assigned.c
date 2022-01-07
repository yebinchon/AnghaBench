
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_dev_addr {int dummy; } ;


 int __uwb_dev_addr_assigned_check ;
 int uwb_dev_for_each (struct uwb_rc*,int ,struct uwb_dev_addr*) ;

__attribute__((used)) static inline unsigned __uwb_dev_addr_assigned(struct uwb_rc *rc,
            struct uwb_dev_addr *addr)
{
 return uwb_dev_for_each(rc, __uwb_dev_addr_assigned_check, addr);
}
