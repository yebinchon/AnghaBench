
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;
typedef int s8 ;


 int AGC ;
 int FIELD_GET (int ,int ) ;
 int MT_BBP (int ,int) ;
 int MT_BBP_AGC_LNA_HIGH_GAIN ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;

__attribute__((used)) static void
mt76x2_adjust_high_lna_gain(struct mt76x02_dev *dev, int reg, s8 offset)
{
 s8 gain;

 gain = FIELD_GET(MT_BBP_AGC_LNA_HIGH_GAIN,
    mt76_rr(dev, MT_BBP(AGC, reg)));
 gain -= offset / 2;
 mt76_rmw_field(dev, MT_BBP(AGC, reg), MT_BBP_AGC_LNA_HIGH_GAIN, gain);
}
