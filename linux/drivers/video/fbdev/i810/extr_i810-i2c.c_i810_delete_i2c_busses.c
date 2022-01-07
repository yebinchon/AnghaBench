
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i810fb_par {TYPE_1__* chan; } ;
struct TYPE_2__ {int * par; int adapter; } ;


 int i2c_del_adapter (int *) ;

void i810_delete_i2c_busses(struct i810fb_par *par)
{
        if (par->chan[0].par)
  i2c_del_adapter(&par->chan[0].adapter);
        par->chan[0].par = ((void*)0);

 if (par->chan[1].par)
  i2c_del_adapter(&par->chan[1].adapter);
 par->chan[1].par = ((void*)0);

 if (par->chan[2].par)
  i2c_del_adapter(&par->chan[2].adapter);
 par->chan[2].par = ((void*)0);
}
