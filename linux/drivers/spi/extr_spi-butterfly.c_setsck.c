
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct butterfly {int lastbyte; int port; } ;


 int parport_write_data (int ,int ) ;
 int spi_sck_bit ;
 struct butterfly* spidev_to_pp (struct spi_device*) ;

__attribute__((used)) static inline void
setsck(struct spi_device *spi, int is_on)
{
 struct butterfly *pp = spidev_to_pp(spi);
 u8 bit, byte = pp->lastbyte;

 bit = spi_sck_bit;

 if (is_on)
  byte |= bit;
 else
  byte &= ~bit;
 parport_write_data(pp->port, byte);
 pp->lastbyte = byte;
}
