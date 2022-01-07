
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_child_t {int total_chnls; int * mon_type; TYPE_1__* chnl_array; int fan_mask; } ;
struct TYPE_2__ {size_t chnl_no; } ;


 int ENVCTRL_FANSTAT_MON ;
 int * chnls_mask ;

__attribute__((used)) static void envctrl_init_fanstat(struct i2c_child_t *pchild)
{
 int i;


 for (i = 0; i < pchild->total_chnls; i++)
  pchild->fan_mask |= chnls_mask[(pchild->chnl_array[i]).chnl_no];




 pchild->mon_type[0] = ENVCTRL_FANSTAT_MON;
}
