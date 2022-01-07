
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rev; int rt; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;


 int rt2x00_info (struct rt2x00_dev*,char*,int ,int ) ;

__attribute__((used)) static inline void rt2x00_set_rt(struct rt2x00_dev *rt2x00dev,
     const u16 rt, const u16 rev)
{
 rt2x00dev->chip.rt = rt;
 rt2x00dev->chip.rev = rev;

 rt2x00_info(rt2x00dev, "RT chipset %04x, rev %04x detected\n",
      rt2x00dev->chip.rt, rt2x00dev->chip.rev);
}
