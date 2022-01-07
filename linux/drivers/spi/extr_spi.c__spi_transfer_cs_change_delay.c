
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {int cs_change_delay; int cs_change_delay_unit; int speed_hz; int effective_speed_hz; } ;
struct spi_message {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int DIV_ROUND_UP (int,int) ;



 int _spi_transfer_delay_ns (int) ;
 int dev_err_once (int *,char*,int) ;

__attribute__((used)) static void _spi_transfer_cs_change_delay(struct spi_message *msg,
       struct spi_transfer *xfer)
{
 u32 delay = xfer->cs_change_delay;
 u32 unit = xfer->cs_change_delay_unit;
 u32 hz;


 if (!delay && unit != 128)
  return;

 switch (unit) {
 case 128:

  if (!delay)
   delay = 10000;
  else
   delay *= 1000;
  break;
 case 130:
  break;
 case 129:



  hz = xfer->effective_speed_hz ?: xfer->speed_hz / 2;
  delay *= DIV_ROUND_UP(1000000000, hz);
  break;
 default:
  dev_err_once(&msg->spi->dev,
        "Use of unsupported delay unit %i, using default of 10us\n",
        xfer->cs_change_delay_unit);
  delay = 10000;
 }

 _spi_transfer_delay_ns(delay);
}
