
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* write ) (int ,int ,int) ;int client; } ;
struct adt7316_chip_info {int config1; TYPE_1__ bus; } ;
typedef int ssize_t ;


 int ADT7316_CONFIG1 ;
 int ADT7316_EN ;
 int EIO ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static ssize_t _adt7316_store_enabled(struct adt7316_chip_info *chip,
          int enable)
{
 u8 config1;
 int ret;

 if (enable)
  config1 = chip->config1 | ADT7316_EN;
 else
  config1 = chip->config1 & ~ADT7316_EN;

 ret = chip->bus.write(chip->bus.client, ADT7316_CONFIG1, config1);
 if (ret)
  return -EIO;

 chip->config1 = config1;

 return ret;
}
