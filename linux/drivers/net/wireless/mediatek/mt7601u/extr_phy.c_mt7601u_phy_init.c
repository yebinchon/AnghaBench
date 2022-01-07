
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int work; } ;
struct mt7601u_dev {int prev_pwr_diff; TYPE_2__ freq_cal; int cal_work; TYPE_1__* ee; void** rf_pa_mode; } ;
struct TYPE_3__ {int rf_freq_off; } ;


 int ARRAY_SIZE (int ) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int MT_RF_PA_MODE_CFG0 ;
 int MT_RF_PA_MODE_CFG1 ;
 int mt7601u_init_cal (struct mt7601u_dev*) ;
 int mt7601u_phy_calibrate ;
 int mt7601u_phy_freq_cal ;
 int mt7601u_rf_wr (struct mt7601u_dev*,int ,int,int ) ;
 void* mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_write_reg_pairs (struct mt7601u_dev*,int ,int ,int ) ;
 int rf_central ;
 int rf_channel ;
 int rf_vga ;

int mt7601u_phy_init(struct mt7601u_dev *dev)
{
 int ret;

 dev->rf_pa_mode[0] = mt7601u_rr(dev, MT_RF_PA_MODE_CFG0);
 dev->rf_pa_mode[1] = mt7601u_rr(dev, MT_RF_PA_MODE_CFG1);

 ret = mt7601u_rf_wr(dev, 0, 12, dev->ee->rf_freq_off);
 if (ret)
  return ret;
 ret = mt7601u_write_reg_pairs(dev, 0, rf_central,
          ARRAY_SIZE(rf_central));
 if (ret)
  return ret;
 ret = mt7601u_write_reg_pairs(dev, 0, rf_channel,
          ARRAY_SIZE(rf_channel));
 if (ret)
  return ret;
 ret = mt7601u_write_reg_pairs(dev, 0, rf_vga, ARRAY_SIZE(rf_vga));
 if (ret)
  return ret;

 ret = mt7601u_init_cal(dev);
 if (ret)
  return ret;

 dev->prev_pwr_diff = 100;

 INIT_DELAYED_WORK(&dev->cal_work, mt7601u_phy_calibrate);
 INIT_DELAYED_WORK(&dev->freq_cal.work, mt7601u_phy_freq_cal);

 return 0;
}
