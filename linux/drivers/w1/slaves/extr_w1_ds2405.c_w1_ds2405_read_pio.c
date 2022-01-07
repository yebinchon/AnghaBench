
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {int dummy; } ;


 int ENODEV ;
 scalar_t__ w1_ds2405_select (struct w1_slave*,int) ;

__attribute__((used)) static int w1_ds2405_read_pio(struct w1_slave *sl)
{
 if (w1_ds2405_select(sl, 1))
  return 0;

 if (w1_ds2405_select(sl, 0))
  return 1;

 return -ENODEV;
}
