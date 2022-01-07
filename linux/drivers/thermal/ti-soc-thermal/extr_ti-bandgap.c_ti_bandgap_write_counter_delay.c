
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_bandgap {int lock; int dev; } ;


 int EINVAL ;
 int RMW_BITS (struct ti_bandgap*,int,int ,int ,int) ;
 int bgap_mask_ctrl ;
 int dev_warn (int ,char*,int) ;
 int mask_counter_delay_mask ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ti_bandgap_write_counter_delay(struct ti_bandgap *bgp, int id,
       u32 interval)
{
 int rval;

 switch (interval) {
 case 0:
  rval = 0x0;
  break;
 case 1:
  rval = 0x1;
  break;
 case 10:
  rval = 0x2;
  break;
 case 100:
  rval = 0x3;
  break;
 case 250:
  rval = 0x4;
  break;
 case 500:
  rval = 0x5;
  break;
 default:
  dev_warn(bgp->dev, "Delay %d ms is not supported\n", interval);
  return -EINVAL;
 }

 spin_lock(&bgp->lock);
 RMW_BITS(bgp, id, bgap_mask_ctrl, mask_counter_delay_mask, rval);
 spin_unlock(&bgp->lock);

 return 0;
}
