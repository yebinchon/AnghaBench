
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb862xxfb_par {int * adap; } ;


 int i2c_del_adapter (int *) ;

void mb862xx_i2c_exit(struct mb862xxfb_par *par)
{
 if (par->adap) {
  i2c_del_adapter(par->adap);
  par->adap = ((void*)0);
 }
}
