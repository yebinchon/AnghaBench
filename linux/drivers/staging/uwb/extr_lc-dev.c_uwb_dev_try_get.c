
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_dev {int dummy; } ;


 int __uwb_dev_try_get ;
 scalar_t__ uwb_dev_for_each (struct uwb_rc*,int ,struct uwb_dev*) ;

struct uwb_dev *uwb_dev_try_get(struct uwb_rc *rc, struct uwb_dev *uwb_dev)
{
 if (uwb_dev_for_each(rc, __uwb_dev_try_get, uwb_dev))
  return uwb_dev;
 else
  return ((void*)0);
}
