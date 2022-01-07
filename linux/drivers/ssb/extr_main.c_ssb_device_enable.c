
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_device {int dummy; } ;


 int SSB_IMSTATE ;
 int SSB_IMSTATE_IBE ;
 int SSB_IMSTATE_TO ;
 int SSB_TMSHIGH ;
 int SSB_TMSHIGH_SERR ;
 int SSB_TMSLOW ;
 int SSB_TMSLOW_CLOCK ;
 int SSB_TMSLOW_FGC ;
 int SSB_TMSLOW_RESET ;
 int ssb_device_disable (struct ssb_device*,int) ;
 int ssb_flush_tmslow (struct ssb_device*) ;
 int ssb_read32 (struct ssb_device*,int ) ;
 int ssb_write32 (struct ssb_device*,int ,int) ;

void ssb_device_enable(struct ssb_device *dev, u32 core_specific_flags)
{
 u32 val;

 ssb_device_disable(dev, core_specific_flags);
 ssb_write32(dev, SSB_TMSLOW,
      SSB_TMSLOW_RESET | SSB_TMSLOW_CLOCK |
      SSB_TMSLOW_FGC | core_specific_flags);
 ssb_flush_tmslow(dev);


 if (ssb_read32(dev, SSB_TMSHIGH) & SSB_TMSHIGH_SERR)
  ssb_write32(dev, SSB_TMSHIGH, 0);

 val = ssb_read32(dev, SSB_IMSTATE);
 if (val & (SSB_IMSTATE_IBE | SSB_IMSTATE_TO)) {
  val &= ~(SSB_IMSTATE_IBE | SSB_IMSTATE_TO);
  ssb_write32(dev, SSB_IMSTATE, val);
 }

 ssb_write32(dev, SSB_TMSLOW,
      SSB_TMSLOW_CLOCK | SSB_TMSLOW_FGC |
      core_specific_flags);
 ssb_flush_tmslow(dev);

 ssb_write32(dev, SSB_TMSLOW, SSB_TMSLOW_CLOCK |
      core_specific_flags);
 ssb_flush_tmslow(dev);
}
