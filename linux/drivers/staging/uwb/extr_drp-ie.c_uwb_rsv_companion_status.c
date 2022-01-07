
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {size_t state; } ;
int uwb_rsv_companion_status(struct uwb_rsv *rsv)
{
 static const int companion_statuses[] = {
  [132] = 0,
  [131] = 1,
  [130] = 0,
  [128] = 0,
  [129] = 0,
 };

 return companion_statuses[rsv->state];
}
