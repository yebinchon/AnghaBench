
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u64 ;
struct ni_gpct_device {int variant; } ;
struct ni_gpct {unsigned int counter_index; struct ni_gpct_device* counter_dev; } ;


 unsigned int GI_660X_ALT_SYNC ;
 unsigned int GI_CNT_MODE_MASK ;




 unsigned int GI_M_ALT_SYNC ;
 unsigned int NITIO_CNT_MODE_REG (unsigned int) ;



 int ni_tio_clock_period_ps (struct ni_gpct*,unsigned int,scalar_t__ const*) ;
 int ni_tio_generic_clock_src_select (struct ni_gpct*,unsigned int*) ;
 unsigned int ni_tio_get_soft_copy (struct ni_gpct*,unsigned int) ;
 int ni_tio_set_bits (struct ni_gpct*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void ni_tio_set_sync_mode(struct ni_gpct *counter)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned int cidx = counter->counter_index;
 static const u64 min_normal_sync_period_ps = 25000;
 unsigned int mask = 0;
 unsigned int bits = 0;
 unsigned int reg;
 unsigned int mode;
 unsigned int clk_src = 0;
 u64 ps = 0;
 int ret;
 bool force_alt_sync;


 switch (counter_dev->variant) {
 case 129:
 default:
  return;
 case 128:
  mask = GI_M_ALT_SYNC;
  break;
 case 130:
  mask = GI_660X_ALT_SYNC;
  break;
 }

 reg = NITIO_CNT_MODE_REG(cidx);
 mode = ni_tio_get_soft_copy(counter, reg);
 switch (mode & GI_CNT_MODE_MASK) {
 case 134:
 case 133:
 case 132:
 case 131:
  force_alt_sync = 1;
  break;
 default:
  force_alt_sync = 0;
  break;
 }

 ret = ni_tio_generic_clock_src_select(counter, &clk_src);
 if (ret)
  return;
 ret = ni_tio_clock_period_ps(counter, clk_src, &ps);
 if (ret)
  return;




 if (force_alt_sync || (ps && ps < min_normal_sync_period_ps))
  bits = mask;

 ni_tio_set_bits(counter, reg, mask, bits);
}
