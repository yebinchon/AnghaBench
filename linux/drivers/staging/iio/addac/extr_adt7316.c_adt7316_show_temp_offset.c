
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* read ) (int ,int,int*) ;int client; } ;
struct adt7316_chip_info {TYPE_1__ bus; } ;
typedef int ssize_t ;


 int EIO ;
 int sprintf (char*,char*,int) ;
 int stub1 (int ,int,int*) ;

__attribute__((used)) static ssize_t adt7316_show_temp_offset(struct adt7316_chip_info *chip,
     int offset_addr, char *buf)
{
 int data;
 u8 val;
 int ret;

 ret = chip->bus.read(chip->bus.client, offset_addr, &val);
 if (ret)
  return -EIO;

 data = (int)val;
 if (val & 0x80)
  data -= 256;

 return sprintf(buf, "%d\n", data);
}
