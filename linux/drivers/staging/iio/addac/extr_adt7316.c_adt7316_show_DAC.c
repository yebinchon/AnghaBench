
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int (* read ) (int ,scalar_t__,int*) ;int client; } ;
struct adt7316_chip_info {int config3; int dac_bits; TYPE_1__ bus; } ;
typedef int ssize_t ;


 int ADT7316_DA_10_BIT_LSB_SHIFT ;
 int ADT7316_DA_12_BIT_LSB_SHIFT ;
 scalar_t__ ADT7316_DA_DATA_BASE ;
 int ADT7316_DA_MSB_DATA_REGS ;
 int ADT7316_EN_EX_TEMP_PROP_DACB ;
 int ADT7316_EN_IN_TEMP_PROP_DACA ;
 int EIO ;
 int EPERM ;
 int sprintf (char*,char*,int) ;
 int stub1 (int ,scalar_t__,int*) ;
 int stub2 (int ,scalar_t__,int*) ;

__attribute__((used)) static ssize_t adt7316_show_DAC(struct adt7316_chip_info *chip,
    int channel, char *buf)
{
 u16 data = 0;
 u8 msb, lsb, offset;
 int ret;

 if (channel >= ADT7316_DA_MSB_DATA_REGS ||
     (channel == 0 &&
     (chip->config3 & ADT7316_EN_IN_TEMP_PROP_DACA)) ||
     (channel == 1 &&
     (chip->config3 & ADT7316_EN_EX_TEMP_PROP_DACB)))
  return -EPERM;

 offset = chip->dac_bits - 8;

 if (chip->dac_bits > 8) {
  ret = chip->bus.read(chip->bus.client,
   ADT7316_DA_DATA_BASE + channel * 2, &lsb);
  if (ret)
   return -EIO;
 }

 ret = chip->bus.read(chip->bus.client,
  ADT7316_DA_DATA_BASE + 1 + channel * 2, &msb);
 if (ret)
  return -EIO;

 if (chip->dac_bits == 12)
  data = lsb >> ADT7316_DA_12_BIT_LSB_SHIFT;
 else if (chip->dac_bits == 10)
  data = lsb >> ADT7316_DA_10_BIT_LSB_SHIFT;
 data |= msb << offset;

 return sprintf(buf, "%d\n", data);
}
