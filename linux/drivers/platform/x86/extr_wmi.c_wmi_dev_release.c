
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_block {int dummy; } ;
struct device {int dummy; } ;


 struct wmi_block* dev_to_wblock (struct device*) ;
 int kfree (struct wmi_block*) ;

__attribute__((used)) static void wmi_dev_release(struct device *dev)
{
 struct wmi_block *wblock = dev_to_wblock(dev);

 kfree(wblock);
}
