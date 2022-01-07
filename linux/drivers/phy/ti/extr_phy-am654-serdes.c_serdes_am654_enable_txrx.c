
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdes_am654 {int rx0_enable; int tx0_enable; } ;


 int RX0_ENABLE_STATE ;
 int TX0_ENABLE_STATE ;
 int regmap_field_write (int ,int ) ;

__attribute__((used)) static int serdes_am654_enable_txrx(struct serdes_am654 *phy)
{
 int ret;


 ret = regmap_field_write(phy->tx0_enable, TX0_ENABLE_STATE);
 if (ret)
  return ret;


 ret = regmap_field_write(phy->rx0_enable, RX0_ENABLE_STATE);
 if (ret)
  return ret;

 return 0;
}
