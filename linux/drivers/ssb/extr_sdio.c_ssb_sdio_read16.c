
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int sdio_sbaddr; int host_sdio; } ;


 int SBSDIO_SB_OFT_ADDR_MASK ;
 int dev_dbg (int ,char*,int,int,int,int) ;
 int sdio_claim_host (int ) ;
 int sdio_readw (int ,int,int*) ;
 int sdio_release_host (int ) ;
 int ssb_sdio_dev (struct ssb_bus*) ;
 int ssb_sdio_switch_core (struct ssb_bus*,struct ssb_device*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static u16 ssb_sdio_read16(struct ssb_device *dev, u16 offset)
{
 struct ssb_bus *bus = dev->bus;
 u16 val = 0xffff;
 int error = 0;

 sdio_claim_host(bus->host_sdio);
 if (unlikely(ssb_sdio_switch_core(bus, dev)))
  goto out;
 offset |= bus->sdio_sbaddr & 0xffff;
 offset &= SBSDIO_SB_OFT_ADDR_MASK;
 val = sdio_readw(bus->host_sdio, offset, &error);
 if (error) {
  dev_dbg(ssb_sdio_dev(bus), "%04X:%04X > %04x, error %d\n",
   bus->sdio_sbaddr >> 16, offset, val, error);
 }
out:
 sdio_release_host(bus->host_sdio);

 return val;
}
