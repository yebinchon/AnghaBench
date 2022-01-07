
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct spi_device {int dev; } ;


 char WRITE_BIT ;
 int dev_dbg (int *,char*,char,char) ;
 int spi_write (struct spi_device*,char**,int) ;

__attribute__((used)) static int rf69_write_reg(struct spi_device *spi, u8 addr, u8 value)
{
 int retval;
 char buffer[2];

 buffer[0] = addr | WRITE_BIT;
 buffer[1] = value;

 retval = spi_write(spi, &buffer, 2);
 return retval;
}
