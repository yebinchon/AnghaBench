
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1305 {int* ctrl; int spi; } ;
struct device {int dummy; } ;
typedef int buf ;


 int DS1305_AEI0 ;
 int DS1305_CONTROL ;
 int DS1305_WRITE ;
 long EINVAL ;
 struct ds1305* dev_get_drvdata (struct device*) ;
 long spi_write_then_read (int ,int*,int,int *,int ) ;

__attribute__((used)) static int ds1305_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct ds1305 *ds1305 = dev_get_drvdata(dev);
 u8 buf[2];
 long err = -EINVAL;

 buf[0] = DS1305_WRITE | DS1305_CONTROL;
 buf[1] = ds1305->ctrl[0];

 if (enabled) {
  if (ds1305->ctrl[0] & DS1305_AEI0)
   goto done;
  buf[1] |= DS1305_AEI0;
 } else {
  if (!(buf[1] & DS1305_AEI0))
   goto done;
  buf[1] &= ~DS1305_AEI0;
 }
 err = spi_write_then_read(ds1305->spi, buf, sizeof(buf), ((void*)0), 0);
 if (err >= 0)
  ds1305->ctrl[0] = buf[1];
done:
 return err;

}
