
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rf; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;


 int rt2x00_info (struct rt2x00_dev*,char*,int ) ;

__attribute__((used)) static inline void rt2x00_set_rf(struct rt2x00_dev *rt2x00dev, const u16 rf)
{
 rt2x00dev->chip.rf = rf;

 rt2x00_info(rt2x00dev, "RF chipset %04x detected\n",
      rt2x00dev->chip.rf);
}
