
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dummy; } ;


 int SSB_TMSLOW ;
 int ssb_read32 (struct ssb_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ssb_flush_tmslow(struct ssb_device *dev)
{






 ssb_read32(dev, SSB_TMSLOW);
 udelay(1);
}
