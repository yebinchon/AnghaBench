
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_device {int dummy; } ;


 int SSB_TMSLOW ;
 int SSB_TMSLOW_CLOCK ;
 int SSB_TMSLOW_RESET ;
 int ssb_read32 (struct ssb_device*,int ) ;
 int ssb_tmslow_reject_bitmask (struct ssb_device*) ;

int ssb_device_is_enabled(struct ssb_device *dev)
{
 u32 val;
 u32 reject;

 reject = ssb_tmslow_reject_bitmask(dev);
 val = ssb_read32(dev, SSB_TMSLOW);
 val &= SSB_TMSLOW_CLOCK | SSB_TMSLOW_RESET | reject;

 return (val == SSB_TMSLOW_CLOCK);
}
