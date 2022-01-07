
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_ant {int flags; } ;
struct TYPE_2__ {int count; struct link_ant ant; } ;
struct rt2x00_dev {TYPE_1__ link; } ;


 int ANTENNA_MODE_SAMPLE ;
 int ANTENNA_RX_DIVERSITY ;
 int ANTENNA_TX_DIVERSITY ;
 int rt2x00lib_antenna_diversity_eval (struct rt2x00_dev*) ;
 int rt2x00lib_antenna_diversity_sample (struct rt2x00_dev*) ;

__attribute__((used)) static bool rt2x00lib_antenna_diversity(struct rt2x00_dev *rt2x00dev)
{
 struct link_ant *ant = &rt2x00dev->link.ant;





 if (!(ant->flags & ANTENNA_RX_DIVERSITY) &&
     !(ant->flags & ANTENNA_TX_DIVERSITY)) {
  ant->flags = 0;
  return 1;
 }







 if (ant->flags & ANTENNA_MODE_SAMPLE) {
  rt2x00lib_antenna_diversity_sample(rt2x00dev);
  return 1;
 } else if (rt2x00dev->link.count & 1) {
  rt2x00lib_antenna_diversity_eval(rt2x00dev);
  return 1;
 }

 return 0;
}
