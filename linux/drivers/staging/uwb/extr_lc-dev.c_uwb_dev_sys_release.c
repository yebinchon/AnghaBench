
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int bce; } ;
struct device {int dummy; } ;


 int kfree (struct uwb_dev*) ;
 int memset (struct uwb_dev*,int,int) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;
 int uwb_bce_put (int ) ;

__attribute__((used)) static void uwb_dev_sys_release(struct device *dev)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);

 uwb_bce_put(uwb_dev->bce);
 memset(uwb_dev, 0x69, sizeof(*uwb_dev));
 kfree(uwb_dev);
}
