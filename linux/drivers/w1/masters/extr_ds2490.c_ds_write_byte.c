
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ds_status {int dummy; } ;
struct ds_device {int spu_bit; scalar_t__ byte_buf; int spu_sleep; } ;


 int COMM_BYTE_IO ;
 int COMM_IM ;
 int ds_recv_data (struct ds_device*,scalar_t__*,int) ;
 int ds_send_control (struct ds_device*,int,scalar_t__) ;
 int ds_wait_status (struct ds_device*,struct ds_status*) ;
 int msleep (int ) ;

__attribute__((used)) static int ds_write_byte(struct ds_device *dev, u8 byte)
{
 int err;
 struct ds_status st;

 err = ds_send_control(dev, COMM_BYTE_IO | COMM_IM | dev->spu_bit, byte);
 if (err)
  return err;

 if (dev->spu_bit)
  msleep(dev->spu_sleep);

 err = ds_wait_status(dev, &st);
 if (err)
  return err;

 err = ds_recv_data(dev, &dev->byte_buf, 1);
 if (err < 0)
  return err;

 return !(byte == dev->byte_buf);
}
