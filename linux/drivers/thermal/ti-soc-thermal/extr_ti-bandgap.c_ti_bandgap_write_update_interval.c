
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_bandgap {int dummy; } ;


 int COUNTER ;
 int COUNTER_DELAY ;
 int ENOTSUPP ;
 scalar_t__ TI_BANDGAP_HAS (struct ti_bandgap*,int ) ;
 int ti_bandgap_validate (struct ti_bandgap*,int) ;
 int ti_bandgap_write_counter (struct ti_bandgap*,int,int ) ;
 int ti_bandgap_write_counter_delay (struct ti_bandgap*,int,int ) ;

int ti_bandgap_write_update_interval(struct ti_bandgap *bgp,
         int id, u32 interval)
{
 int ret = ti_bandgap_validate(bgp, id);
 if (ret)
  goto exit;

 if (!TI_BANDGAP_HAS(bgp, COUNTER) &&
     !TI_BANDGAP_HAS(bgp, COUNTER_DELAY)) {
  ret = -ENOTSUPP;
  goto exit;
 }

 if (TI_BANDGAP_HAS(bgp, COUNTER)) {
  ti_bandgap_write_counter(bgp, id, interval);
  goto exit;
 }

 ret = ti_bandgap_write_counter_delay(bgp, id, interval);
exit:
 return ret;
}
