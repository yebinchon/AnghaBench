
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entries; int * e; } ;
struct mt7601u_dev {TYPE_1__ rx_q; } ;


 int GFP_KERNEL ;
 int mt7601u_submit_rx_buf (struct mt7601u_dev*,int *,int ) ;

__attribute__((used)) static int mt7601u_submit_rx(struct mt7601u_dev *dev)
{
 int i, ret;

 for (i = 0; i < dev->rx_q.entries; i++) {
  ret = mt7601u_submit_rx_buf(dev, &dev->rx_q.e[i], GFP_KERNEL);
  if (ret)
   return ret;
 }

 return 0;
}
