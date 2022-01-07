
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;


 int dev_dbg (int *,char*,int,...) ;
 int spi_w8r8 (struct spi_device*,int) ;

__attribute__((used)) static u8 rf69_read_reg(struct spi_device *spi, u8 addr)
{
 int retval;

 retval = spi_w8r8(spi, addr);
 return retval;
}
