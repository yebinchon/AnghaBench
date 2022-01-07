
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct riva_par {TYPE_1__* chan; } ;
struct TYPE_2__ {int ddc_base; struct riva_par* par; } ;


 int I2C_CLASS_HWMON ;
 int riva_setup_i2c_bus (TYPE_1__*,char*,int ) ;

void riva_create_i2c_busses(struct riva_par *par)
{
 par->chan[0].par = par;
 par->chan[1].par = par;
 par->chan[2].par = par;

 par->chan[0].ddc_base = 0x36;
 par->chan[1].ddc_base = 0x3e;
 par->chan[2].ddc_base = 0x50;
 riva_setup_i2c_bus(&par->chan[0], "BUS1", I2C_CLASS_HWMON);
 riva_setup_i2c_bus(&par->chan[1], "BUS2", 0);
 riva_setup_i2c_bus(&par->chan[2], "BUS3", 0);
}
