
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode {scalar_t__ svid; } ;


 int ENOTSUPP ;
 scalar_t__ USB_TYPEC_NVIDIA_VLINK_SID ;
 int dp_altmode_probe (struct typec_altmode*) ;

__attribute__((used)) static int nvidia_altmode_probe(struct typec_altmode *alt)
{
 if (alt->svid == USB_TYPEC_NVIDIA_VLINK_SID)
  return dp_altmode_probe(alt);
 else
  return -ENOTSUPP;
}
