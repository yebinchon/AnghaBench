
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i810fb_par {TYPE_1__* chan; } ;
struct TYPE_2__ {int ddc_base; struct i810fb_par* par; } ;


 int GPIOA ;
 int GPIOB ;
 int GPIOC ;
 int i810_setup_i2c_bus (TYPE_1__*,char*) ;

void i810_create_i2c_busses(struct i810fb_par *par)
{
        par->chan[0].par = par;
 par->chan[1].par = par;
 par->chan[2].par = par;

 par->chan[0].ddc_base = GPIOA;
 i810_setup_i2c_bus(&par->chan[0], "I810-DDC");
 par->chan[1].ddc_base = GPIOB;
 i810_setup_i2c_bus(&par->chan[1], "I810-I2C");
 par->chan[2].ddc_base = GPIOC;
 i810_setup_i2c_bus(&par->chan[2], "I810-GPIOC");
}
