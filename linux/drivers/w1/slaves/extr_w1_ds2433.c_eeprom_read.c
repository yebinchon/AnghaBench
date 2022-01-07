
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct w1_slave {TYPE_1__* master; struct w1_f23_data* family_data; } ;
struct w1_f23_data {int * memory; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef size_t loff_t ;
struct TYPE_3__ {int bus_mutex; } ;


 size_t EIO ;
 int W1_EEPROM_SIZE ;
 size_t W1_F23_READ_EEPROM ;
 size_t W1_PAGE_BITS ;
 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int memcpy (char*,int *,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t w1_f23_fix_count (size_t,size_t,int ) ;
 scalar_t__ w1_f23_refresh_block (struct w1_slave*,struct w1_f23_data*,int) ;
 int w1_read_block (TYPE_1__*,char*,size_t) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_block (TYPE_1__*,size_t*,int) ;

__attribute__((used)) static ssize_t eeprom_read(struct file *filp, struct kobject *kobj,
      struct bin_attribute *bin_attr, char *buf,
      loff_t off, size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);




 u8 wrbuf[3];


 if ((count = w1_f23_fix_count(off, count, W1_EEPROM_SIZE)) == 0)
  return 0;

 mutex_lock(&sl->master->bus_mutex);
 if (w1_reset_select_slave(sl)) {
  count = -EIO;
  goto out_up;
 }

 wrbuf[0] = W1_F23_READ_EEPROM;
 wrbuf[1] = off & 0xff;
 wrbuf[2] = off >> 8;
 w1_write_block(sl->master, wrbuf, 3);
 w1_read_block(sl->master, buf, count);



out_up:
 mutex_unlock(&sl->master->bus_mutex);

 return count;
}
