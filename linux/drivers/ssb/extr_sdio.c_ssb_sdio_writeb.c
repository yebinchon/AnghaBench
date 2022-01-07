
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ssb_bus {int host_sdio; } ;


 int dev_dbg (int ,char*,unsigned int,int ,int) ;
 int sdio_writeb (int ,int ,unsigned int,int*) ;
 int ssb_sdio_dev (struct ssb_bus*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ssb_sdio_writeb(struct ssb_bus *bus, unsigned int addr, u8 val)
{
 int error = 0;

 sdio_writeb(bus->host_sdio, val, addr, &error);
 if (unlikely(error)) {
  dev_dbg(ssb_sdio_dev(bus), "%08X <- %02x, error %d\n",
   addr, val, error);
 }

 return error;
}
