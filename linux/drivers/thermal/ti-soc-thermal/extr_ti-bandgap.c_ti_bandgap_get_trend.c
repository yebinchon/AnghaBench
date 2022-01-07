
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ti_bandgap {int lock; int dev; TYPE_2__* conf; } ;
struct temp_sensor_registers {int bgap_dtemp_mask; int ctrl_dtemp_2; int ctrl_dtemp_1; } ;
struct TYPE_4__ {TYPE_1__* sensors; } ;
struct TYPE_3__ {struct temp_sensor_registers* registers; } ;


 int ENOTSUPP ;
 int FREEZE_BIT ;
 int HISTORY_BUFFER ;
 int RMW_BITS (struct ti_bandgap*,int,int ,int ,int) ;
 int TI_BANDGAP_HAS (struct ti_bandgap*,int ) ;
 int bgap_mask_ctrl ;
 int dev_dbg (int ,char*,int,int,int) ;
 int mask_freeze_mask ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ti_bandgap_adc_to_mcelsius (struct ti_bandgap*,int ,int*) ;
 int ti_bandgap_read_update_interval (struct ti_bandgap*,int,int*) ;
 int ti_bandgap_readl (struct ti_bandgap*,int ) ;
 int ti_bandgap_validate (struct ti_bandgap*,int) ;

int ti_bandgap_get_trend(struct ti_bandgap *bgp, int id, int *trend)
{
 struct temp_sensor_registers *tsr;
 u32 temp1, temp2, reg1, reg2;
 int t1, t2, interval, ret = 0;

 ret = ti_bandgap_validate(bgp, id);
 if (ret)
  goto exit;

 if (!TI_BANDGAP_HAS(bgp, HISTORY_BUFFER) ||
     !TI_BANDGAP_HAS(bgp, FREEZE_BIT)) {
  ret = -ENOTSUPP;
  goto exit;
 }

 spin_lock(&bgp->lock);

 tsr = bgp->conf->sensors[id].registers;


 RMW_BITS(bgp, id, bgap_mask_ctrl, mask_freeze_mask, 1);
 reg1 = tsr->ctrl_dtemp_1;
 reg2 = tsr->ctrl_dtemp_2;


 temp1 = ti_bandgap_readl(bgp, reg1);
 temp1 &= tsr->bgap_dtemp_mask;

 temp2 = ti_bandgap_readl(bgp, reg2);
 temp2 &= tsr->bgap_dtemp_mask;


 ret = ti_bandgap_adc_to_mcelsius(bgp, temp1, &t1);
 if (ret)
  goto unfreeze;

 ret = ti_bandgap_adc_to_mcelsius(bgp, temp2, &t2);
 if (ret)
  goto unfreeze;


 ret = ti_bandgap_read_update_interval(bgp, id, &interval);
 if (ret)
  goto unfreeze;


 if (interval == 0)
  interval = 1;

 *trend = (t1 - t2) / interval;

 dev_dbg(bgp->dev, "The temperatures are t1 = %d and t2 = %d and trend =%d\n",
  t1, t2, *trend);

unfreeze:
 RMW_BITS(bgp, id, bgap_mask_ctrl, mask_freeze_mask, 0);
 spin_unlock(&bgp->lock);
exit:
 return ret;
}
