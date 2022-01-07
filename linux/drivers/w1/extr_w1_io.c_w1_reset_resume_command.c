
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {int slave_count; } ;


 int W1_RESUME_CMD ;
 int W1_SKIP_ROM ;
 scalar_t__ w1_reset_bus (struct w1_master*) ;
 int w1_write_8 (struct w1_master*,int ) ;

int w1_reset_resume_command(struct w1_master *dev)
{
 if (w1_reset_bus(dev))
  return -1;

 w1_write_8(dev, dev->slave_count > 1 ? W1_RESUME_CMD : W1_SKIP_ROM);
 return 0;
}
