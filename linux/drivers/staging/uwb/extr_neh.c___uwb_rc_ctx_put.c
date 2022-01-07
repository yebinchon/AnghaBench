
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rc_neh {int context; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {int ctx_bm; TYPE_1__ uwb_dev; } ;


 int WARN_ON (int) ;
 int clear_bit (int ,int ) ;
 int dev_err (struct device*,char*,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static
void __uwb_rc_ctx_put(struct uwb_rc *rc, struct uwb_rc_neh *neh)
{
 struct device *dev = &rc->uwb_dev.dev;
 if (neh->context == 0)
  return;
 if (test_bit(neh->context, rc->ctx_bm) == 0) {
  dev_err(dev, "context %u not set in bitmap\n",
   neh->context);
  WARN_ON(1);
 }
 clear_bit(neh->context, rc->ctx_bm);
 neh->context = 0;
}
