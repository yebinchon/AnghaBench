
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {size_t state; } ;
__attribute__((used)) static int uwb_rsv_companion_reason_code(struct uwb_rsv *rsv)
{
 static const int companion_reason_codes[] = {
  [132] = 136,
  [131] = 136,
  [130] = 135,
  [128] = 133,
  [129] = 134,
 };

 return companion_reason_codes[rsv->state];
}
