
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int TRF7970A_AUTOSUSPEND_DELAY ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int trf7970a_get_autosuspend_delay(struct device_node *np)
{
 int autosuspend_delay, ret;

 ret = of_property_read_u32(np, "autosuspend-delay", &autosuspend_delay);
 if (ret)
  autosuspend_delay = TRF7970A_AUTOSUSPEND_DELAY;

 return autosuspend_delay;
}
