
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intelfb_info {int dummy; } ;
struct intelfb_i2c_chan {int reg; struct intelfb_info* dinfo; } ;


 int INREG (int ) ;
 int OUTREG (int ,int ) ;
 int SDA_DIR_MASK ;
 int SDA_VAL_IN ;

__attribute__((used)) static int intelfb_gpio_getsda(void *data)
{
 struct intelfb_i2c_chan *chan = data;
 struct intelfb_info *dinfo = chan->dinfo;
 u32 val;

 OUTREG(chan->reg, SDA_DIR_MASK);
 OUTREG(chan->reg, 0);
 val = INREG(chan->reg);
 return ((val & SDA_VAL_IN) != 0);
}
