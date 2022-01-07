
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dev; } ;


 int EIO ;
 int MT_BBP_REG_VERSION ;
 int dev_err (int ,char*) ;
 int mt7601u_bbp_rr (struct mt7601u_dev*,int ) ;

int mt7601u_wait_bbp_ready(struct mt7601u_dev *dev)
{
 int i = 20;
 u8 val;

 do {
  val = mt7601u_bbp_rr(dev, MT_BBP_REG_VERSION);
  if (val && ~val)
   break;
 } while (--i);

 if (!i) {
  dev_err(dev->dev, "Error: BBP is not ready\n");
  return -EIO;
 }

 return 0;
}
