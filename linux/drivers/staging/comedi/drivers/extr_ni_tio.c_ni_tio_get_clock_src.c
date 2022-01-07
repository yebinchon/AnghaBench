
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct ni_gpct {int dummy; } ;


 int do_div (unsigned int,int) ;
 int ni_tio_clock_period_ps (struct ni_gpct*,unsigned int,unsigned int*) ;
 int ni_tio_generic_clock_src_select (struct ni_gpct*,unsigned int*) ;

__attribute__((used)) static int ni_tio_get_clock_src(struct ni_gpct *counter,
    unsigned int *clock_source,
    unsigned int *period_ns)
{
 u64 temp64 = 0;
 int ret;

 ret = ni_tio_generic_clock_src_select(counter, clock_source);
 if (ret)
  return ret;
 ret = ni_tio_clock_period_ps(counter, *clock_source, &temp64);
 if (ret)
  return ret;
 do_div(temp64, 1000);
 *period_ns = temp64;
 return 0;
}
