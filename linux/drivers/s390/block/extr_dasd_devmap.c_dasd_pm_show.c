
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_path_get_cablepm (struct dasd_device*) ;
 int dasd_path_get_cuirpm (struct dasd_device*) ;
 int dasd_path_get_hpfpm (struct dasd_device*) ;
 int dasd_path_get_ifccpm (struct dasd_device*) ;
 int dasd_path_get_nppm (struct dasd_device*) ;
 int dasd_path_get_opm (struct dasd_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 int sprintf (char*,char*,...) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t dasd_pm_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct dasd_device *device;
 u8 opm, nppm, cablepm, cuirpm, hpfpm, ifccpm;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  return sprintf(buf, "0\n");

 opm = dasd_path_get_opm(device);
 nppm = dasd_path_get_nppm(device);
 cablepm = dasd_path_get_cablepm(device);
 cuirpm = dasd_path_get_cuirpm(device);
 hpfpm = dasd_path_get_hpfpm(device);
 ifccpm = dasd_path_get_ifccpm(device);
 dasd_put_device(device);

 return sprintf(buf, "%02x %02x %02x %02x %02x %02x\n", opm, nppm,
         cablepm, cuirpm, hpfpm, ifccpm);
}
