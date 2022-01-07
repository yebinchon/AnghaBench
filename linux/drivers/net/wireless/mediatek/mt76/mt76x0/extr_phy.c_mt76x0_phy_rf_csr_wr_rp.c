
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;
struct mt76_reg_pair {int value; int reg; } ;


 int mt76x0_rf_csr_wr (struct mt76x02_dev*,int ,int ) ;

__attribute__((used)) static void
mt76x0_phy_rf_csr_wr_rp(struct mt76x02_dev *dev,
   const struct mt76_reg_pair *data,
   int n)
{
 while (n-- > 0) {
  mt76x0_rf_csr_wr(dev, data->reg, data->value);
  data++;
 }
}
