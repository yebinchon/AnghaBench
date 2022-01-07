
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeonfb_info {TYPE_1__* i2c; } ;
struct TYPE_2__ {int * rinfo; int adapter; } ;


 int i2c_del_adapter (int *) ;

void radeon_delete_i2c_busses(struct radeonfb_info *rinfo)
{
 if (rinfo->i2c[0].rinfo)
  i2c_del_adapter(&rinfo->i2c[0].adapter);
 rinfo->i2c[0].rinfo = ((void*)0);

 if (rinfo->i2c[1].rinfo)
  i2c_del_adapter(&rinfo->i2c[1].adapter);
 rinfo->i2c[1].rinfo = ((void*)0);

 if (rinfo->i2c[2].rinfo)
  i2c_del_adapter(&rinfo->i2c[2].adapter);
 rinfo->i2c[2].rinfo = ((void*)0);

 if (rinfo->i2c[3].rinfo)
  i2c_del_adapter(&rinfo->i2c[3].adapter);
 rinfo->i2c[3].rinfo = ((void*)0);
}
