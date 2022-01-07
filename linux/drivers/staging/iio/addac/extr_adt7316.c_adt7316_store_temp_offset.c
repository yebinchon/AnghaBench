
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int (* write ) (int ,int,scalar_t__) ;int client; } ;
struct adt7316_chip_info {TYPE_1__ bus; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EIO ;
 int kstrtoint (char const*,int,int*) ;
 int stub1 (int ,int,scalar_t__) ;

__attribute__((used)) static ssize_t adt7316_store_temp_offset(struct adt7316_chip_info *chip,
      int offset_addr,
      const char *buf,
      size_t len)
{
 int data;
 u8 val;
 int ret;

 ret = kstrtoint(buf, 10, &data);
 if (ret || data > 127 || data < -128)
  return -EINVAL;

 if (data < 0)
  data += 256;

 val = (u8)data;

 ret = chip->bus.write(chip->bus.client, offset_addr, val);
 if (ret)
  return -EIO;

 return len;
}
