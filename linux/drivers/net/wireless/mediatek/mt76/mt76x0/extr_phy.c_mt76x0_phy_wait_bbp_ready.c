
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int CORE ;
 int EIO ;
 int MT_BBP (int ,int ) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;

int mt76x0_phy_wait_bbp_ready(struct mt76x02_dev *dev)
{
 int i = 20;
 u32 val;

 do {
  val = mt76_rr(dev, MT_BBP(CORE, 0));
  if (val && ~val)
   break;
 } while (--i);

 if (!i) {
  dev_err(dev->mt76.dev, "Error: BBP is not ready\n");
  return -EIO;
 }

 dev_dbg(dev->mt76.dev, "BBP version %08x\n", val);
 return 0;
}
