
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int stat_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int flush_delayed_work (int *) ;
 int mt7601u_mac_stop_hw (struct mt7601u_dev*) ;

void mt7601u_mac_stop(struct mt7601u_dev *dev)
{
 mt7601u_mac_stop_hw(dev);
 flush_delayed_work(&dev->stat_work);
 cancel_delayed_work_sync(&dev->stat_work);
}
