
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {size_t state; } ;
int uwb_rsv_status(struct uwb_rsv *rsv)
{
 static const int statuses[] = {
  [143] = 0,
  [138] = 0,
  [142] = 1,
  [144] = 1,
  [137] = 0,
  [141] = 1,
  [139] = 1,
  [140] = 1,
  [136] = 1,
  [135] = 0,
  [129] = 0,
  [134] = 0,
  [128] = 1,
  [133] = 1,
  [132] = 1,
  [130] = 1,
  [131] = 1,

 };

 return statuses[rsv->state];
}
