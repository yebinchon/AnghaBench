
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* counter_dev; } ;
struct TYPE_2__ {int variant; } ;


 int ni_660x_clock_src_select (struct ni_gpct const*,unsigned int*) ;



 int ni_m_series_clock_src_select (struct ni_gpct const*,unsigned int*) ;

__attribute__((used)) static int ni_tio_generic_clock_src_select(const struct ni_gpct *counter,
        unsigned int *clk_src)
{
 switch (counter->counter_dev->variant) {
 case 129:
 case 128:
 default:
  return ni_m_series_clock_src_select(counter, clk_src);
 case 130:
  return ni_660x_clock_src_select(counter, clk_src);
 }
}
