
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; } ;
struct uwb_dev {int streams; int mac_addr; int dev_addr; TYPE_1__ dev; int mutex; } ;


 int UWB_NUM_GLOBAL_STREAMS ;
 int bitmap_fill (int ,int ) ;
 int device_initialize (TYPE_1__*) ;
 int mutex_init (int *) ;
 int uwb_dev_addr_init (int *) ;
 int uwb_dev_sys_release ;
 int uwb_mac_addr_init (int *) ;

void uwb_dev_init(struct uwb_dev *uwb_dev)
{
 mutex_init(&uwb_dev->mutex);
 device_initialize(&uwb_dev->dev);
 uwb_dev->dev.release = uwb_dev_sys_release;
 uwb_dev_addr_init(&uwb_dev->dev_addr);
 uwb_mac_addr_init(&uwb_dev->mac_addr);
 bitmap_fill(uwb_dev->streams, UWB_NUM_GLOBAL_STREAMS);
}
