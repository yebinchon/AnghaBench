
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int pr_err (char*,unsigned int) ;
 int spi_write (struct spi_device*,unsigned char*,int) ;

__attribute__((used)) static int nec_8048_spi_send(struct spi_device *spi, unsigned char reg_addr,
   unsigned char reg_data)
{
 int ret = 0;
 unsigned int cmd = 0, data = 0;

 cmd = 0x0000 | reg_addr;
 data = 0x0100 | reg_data;
 data = (cmd << 16) | data;

 ret = spi_write(spi, (unsigned char *)&data, 4);
 if (ret)
  pr_err("error in spi_write %x\n", data);

 return ret;
}
