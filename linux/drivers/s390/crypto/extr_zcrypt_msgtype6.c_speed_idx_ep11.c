
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIGH ;
 int LOW ;
 int MEDIUM ;

int speed_idx_ep11(int req_type)
{
 switch (req_type) {
 case 1:
 case 2:
 case 36:
 case 37:
 case 38:
 case 39:
 case 40:
  return LOW;
 case 17:
 case 18:
 case 19:
 case 20:
 case 21:
 case 22:
 case 26:
 case 30:
 case 31:
 case 32:
 case 33:
 case 34:
 case 35:
  return HIGH;
 default:
  return MEDIUM;
 }
}
