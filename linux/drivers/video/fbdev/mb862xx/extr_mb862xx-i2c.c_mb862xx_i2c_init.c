
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mb862xxfb_par {TYPE_1__* adap; } ;
struct TYPE_3__ {struct mb862xxfb_par* algo_data; } ;


 int i2c_add_adapter (TYPE_1__*) ;
 TYPE_1__ mb862xx_i2c_adapter ;

int mb862xx_i2c_init(struct mb862xxfb_par *par)
{
 mb862xx_i2c_adapter.algo_data = par;
 par->adap = &mb862xx_i2c_adapter;

 return i2c_add_adapter(par->adap);
}
