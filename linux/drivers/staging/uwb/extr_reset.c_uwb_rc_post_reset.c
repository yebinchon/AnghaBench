
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev_addr; int mac_addr; } ;
struct uwb_rc {int (* start ) (struct uwb_rc*) ;TYPE_1__ uwb_dev; } ;


 int stub1 (struct uwb_rc*) ;
 int uwb_rc_dev_addr_set (struct uwb_rc*,int *) ;
 int uwb_rc_mac_addr_set (struct uwb_rc*,int *) ;

int uwb_rc_post_reset(struct uwb_rc *rc)
{
 int ret;

 ret = rc->start(rc);
 if (ret)
  goto out;
 ret = uwb_rc_mac_addr_set(rc, &rc->uwb_dev.mac_addr);
 if (ret)
  goto out;
 ret = uwb_rc_dev_addr_set(rc, &rc->uwb_dev.dev_addr);
 if (ret)
  goto out;
out:
 return ret;
}
