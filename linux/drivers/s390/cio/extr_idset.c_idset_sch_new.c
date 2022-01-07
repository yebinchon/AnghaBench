
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int dummy; } ;


 scalar_t__ __MAX_SUBCHANNEL ;
 struct idset* idset_new (scalar_t__,scalar_t__) ;
 scalar_t__ max_ssid ;

struct idset *idset_sch_new(void)
{
 return idset_new(max_ssid + 1, __MAX_SUBCHANNEL + 1);
}
