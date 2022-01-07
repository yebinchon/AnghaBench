
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct wmt_pinctrl_data {int npins; TYPE_1__* pins; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int EINVAL ;

__attribute__((used)) static int wmt_pctl_find_group_by_pin(struct wmt_pinctrl_data *data, u32 pin)
{
 int i;

 for (i = 0; i < data->npins; i++) {
  if (data->pins[i].number == pin)
   return i;
 }

 return -EINVAL;
}
