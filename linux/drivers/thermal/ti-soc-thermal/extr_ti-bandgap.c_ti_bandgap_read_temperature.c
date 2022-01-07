
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_bandgap {int lock; } ;


 int EIO ;
 int MODE_CONFIG ;
 int TI_BANDGAP_HAS (struct ti_bandgap*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ti_bandgap_adc_to_mcelsius (struct ti_bandgap*,int,int*) ;
 int ti_bandgap_force_single_read (struct ti_bandgap*,int) ;
 int ti_bandgap_read_temp (struct ti_bandgap*,int) ;
 int ti_bandgap_validate (struct ti_bandgap*,int) ;

int ti_bandgap_read_temperature(struct ti_bandgap *bgp, int id,
    int *temperature)
{
 u32 temp;
 int ret;

 ret = ti_bandgap_validate(bgp, id);
 if (ret)
  return ret;

 if (!TI_BANDGAP_HAS(bgp, MODE_CONFIG)) {
  ret = ti_bandgap_force_single_read(bgp, id);
  if (ret)
   return ret;
 }

 spin_lock(&bgp->lock);
 temp = ti_bandgap_read_temp(bgp, id);
 spin_unlock(&bgp->lock);

 ret = ti_bandgap_adc_to_mcelsius(bgp, temp, &temp);
 if (ret)
  return -EIO;

 *temperature = temp;

 return 0;
}
