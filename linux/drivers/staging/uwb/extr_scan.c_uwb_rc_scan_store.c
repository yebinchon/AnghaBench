
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_dev {struct uwb_rc* rc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 unsigned int UWB_SCAN_TOP ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;
 int uwb_rc_scan (struct uwb_rc*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static ssize_t uwb_rc_scan_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t size)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_rc *rc = uwb_dev->rc;
 unsigned channel;
 unsigned type;
 unsigned bpst_offset = 0;
 ssize_t result = -EINVAL;

 result = sscanf(buf, "%u %u %u\n", &channel, &type, &bpst_offset);
 if (result >= 2 && type < UWB_SCAN_TOP)
  result = uwb_rc_scan(rc, channel, type, bpst_offset);

 return result < 0 ? result : size;
}
