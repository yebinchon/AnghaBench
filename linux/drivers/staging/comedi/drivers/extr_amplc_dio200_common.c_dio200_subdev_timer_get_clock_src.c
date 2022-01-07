
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int DIO200_TS_CONFIG ;
 unsigned int TS_CONFIG_CLK_SRC_MASK ;
 unsigned int dio200_read32 (struct comedi_device*,int ) ;
 unsigned int* ts_clock_period ;

__attribute__((used)) static void dio200_subdev_timer_get_clock_src(struct comedi_device *dev,
           struct comedi_subdevice *s,
           unsigned int *src,
           unsigned int *period)
{
 unsigned int clk;

 clk = dio200_read32(dev, DIO200_TS_CONFIG) & TS_CONFIG_CLK_SRC_MASK;
 *src = clk;
 *period = (clk < ARRAY_SIZE(ts_clock_period)) ?
    ts_clock_period[clk] : 0;
}
