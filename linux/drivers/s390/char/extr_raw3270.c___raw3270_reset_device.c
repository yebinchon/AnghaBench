
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; scalar_t__ cda; int flags; int cmd_code; } ;
struct TYPE_4__ {int callback; TYPE_1__ ccw; scalar_t__ view; } ;
struct raw3270 {scalar_t__ state; TYPE_2__ init_reset; int init_view; int * init_data; } ;
typedef scalar_t__ __u32 ;


 int CCW_FLAG_SLI ;
 int EBUSY ;
 scalar_t__ RAW3270_STATE_INIT ;
 scalar_t__ RAW3270_STATE_RESET ;
 int TC_EWRITEA ;
 int TW_KR ;
 scalar_t__ __pa (int *) ;
 int __raw3270_start (struct raw3270*,int *,TYPE_2__*) ;
 int raw3270_reset_device_cb ;

__attribute__((used)) static int
__raw3270_reset_device(struct raw3270 *rp)
{
 int rc;


 if (rp->init_reset.view)
  return -EBUSY;

 rp->init_data[0] = TW_KR;
 rp->init_reset.ccw.cmd_code = TC_EWRITEA;
 rp->init_reset.ccw.flags = CCW_FLAG_SLI;
 rp->init_reset.ccw.count = 1;
 rp->init_reset.ccw.cda = (__u32) __pa(rp->init_data);
 rp->init_reset.callback = raw3270_reset_device_cb;
 rc = __raw3270_start(rp, &rp->init_view, &rp->init_reset);
 if (rc == 0 && rp->state == RAW3270_STATE_INIT)
  rp->state = RAW3270_STATE_RESET;
 return rc;
}
