
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct uwb_rc {int (* reset ) (struct uwb_rc*) ;TYPE_1__ uwb_dev; } ;
struct uwb_event {struct uwb_rc* rc; } ;


 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int msleep (int) ;
 int stub1 (struct uwb_rc*) ;
 int uwb_rc_reset_all (struct uwb_rc*) ;

int uwbd_msg_handle_reset(struct uwb_event *evt)
{
 struct uwb_rc *rc = evt->rc;
 int ret;

 dev_info(&rc->uwb_dev.dev, "resetting radio controller\n");
 ret = rc->reset(rc);
 if (ret < 0) {
  dev_err(&rc->uwb_dev.dev, "failed to reset hardware: %d\n", ret);
  goto error;
 }
 return 0;
error:


 msleep(1000);
 uwb_rc_reset_all(rc);
 return ret;
}
