
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mac_addr {int dummy; } ;
struct uwb_dev {struct uwb_rc* rc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int UWB_ADDR_MAC ;
 int UWB_ADDR_STRSIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;
 scalar_t__ uwb_mac_addr_print (char*,int ,struct uwb_mac_addr*) ;
 scalar_t__ uwb_rc_addr_get (struct uwb_rc*,struct uwb_mac_addr*,int ) ;

__attribute__((used)) static ssize_t uwb_rc_mac_addr_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_rc *rc = uwb_dev->rc;
 struct uwb_mac_addr addr;
 ssize_t result;

 mutex_lock(&rc->uwb_dev.mutex);
 result = uwb_rc_addr_get(rc, &addr, UWB_ADDR_MAC);
 mutex_unlock(&rc->uwb_dev.mutex);
 if (result >= 0) {
  result = uwb_mac_addr_print(buf, UWB_ADDR_STRSIZE, &addr);
  buf[result++] = '\n';
 }
 return result;
}
