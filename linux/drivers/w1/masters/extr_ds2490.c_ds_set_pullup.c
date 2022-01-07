
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int spu_sleep; int spu_bit; } ;


 int COMM_IM ;
 int COMM_SET_DURATION ;
 int COMM_SPU ;
 int ds_send_control (struct ds_device*,int,int) ;

__attribute__((used)) static int ds_set_pullup(struct ds_device *dev, int delay)
{
 int err = 0;
 u8 del = 1 + (u8)(delay >> 4);

 int ms = del<<4;


 dev->spu_bit = delay ? COMM_SPU : 0;





 if (delay == 0 || ms == dev->spu_sleep)
  return err;

 err = ds_send_control(dev, COMM_SET_DURATION | COMM_IM, del);
 if (err)
  return err;

 dev->spu_sleep = ms;

 return err;
}
