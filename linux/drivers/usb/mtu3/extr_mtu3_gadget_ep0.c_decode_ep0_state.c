
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {int ep0_state; } ;
__attribute__((used)) static char *decode_ep0_state(struct mtu3 *mtu)
{
 switch (mtu->ep0_state) {
 case 131:
  return "SETUP";
 case 129:
  return "IN";
 case 132:
  return "OUT";
 case 128:
  return "TX-END";
 case 130:
  return "STALL";
 default:
  return "??";
 }
}
