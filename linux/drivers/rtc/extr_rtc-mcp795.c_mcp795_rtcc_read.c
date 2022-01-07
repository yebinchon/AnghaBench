
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tx ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int MCP795_READ ;
 int dev_err (struct device*,char*,int ,int ) ;
 int spi_write_then_read (struct spi_device*,int *,int,int *,int ) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int mcp795_rtcc_read(struct device *dev, u8 addr, u8 *buf, u8 count)
{
 struct spi_device *spi = to_spi_device(dev);
 int ret;
 u8 tx[2];

 tx[0] = MCP795_READ;
 tx[1] = addr;
 ret = spi_write_then_read(spi, tx, sizeof(tx), buf, count);

 if (ret)
  dev_err(dev, "Failed reading %d bytes from address %x.\n",
     count, addr);

 return ret;
}
