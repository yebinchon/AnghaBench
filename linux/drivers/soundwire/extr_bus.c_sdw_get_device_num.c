
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_slave {TYPE_1__* bus; } ;
struct TYPE_2__ {int assigned; } ;


 int ENODEV ;
 int SDW_MAX_DEVICES ;
 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int sdw_get_device_num(struct sdw_slave *slave)
{
 int bit;

 bit = find_first_zero_bit(slave->bus->assigned, SDW_MAX_DEVICES);
 if (bit == SDW_MAX_DEVICES) {
  bit = -ENODEV;
  goto err;
 }





 set_bit(bit, slave->bus->assigned);

err:
 return bit;
}
