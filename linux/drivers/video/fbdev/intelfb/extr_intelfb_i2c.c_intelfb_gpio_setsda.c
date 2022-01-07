
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intelfb_info {int dummy; } ;
struct intelfb_i2c_chan {int reg; struct intelfb_info* dinfo; } ;


 int INREG (int ) ;
 int OUTREG (int ,int) ;
 int SDA_DIR ;
 int SDA_DIR_MASK ;
 int SDA_VAL_MASK ;
 int SDA_VAL_OUT ;

__attribute__((used)) static void intelfb_gpio_setsda(void *data, int state)
{
 struct intelfb_i2c_chan *chan = data;
 struct intelfb_info *dinfo = chan->dinfo;
 u32 val;

 OUTREG(chan->reg, (state ? SDA_VAL_OUT : 0) |
        SDA_DIR | SDA_DIR_MASK | SDA_VAL_MASK);
 val = INREG(chan->reg);
}
