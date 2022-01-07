
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nsec; scalar_t__ sec; } ;
struct TYPE_3__ {int mode; } ;
struct pps_device {int assert_sequence; TYPE_2__ assert_tu; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PPS_CAPTUREASSERT ;
 struct pps_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,long long,int ,int ) ;

__attribute__((used)) static ssize_t assert_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct pps_device *pps = dev_get_drvdata(dev);

 if (!(pps->info.mode & PPS_CAPTUREASSERT))
  return 0;

 return sprintf(buf, "%lld.%09d#%d\n",
   (long long) pps->assert_tu.sec, pps->assert_tu.nsec,
   pps->assert_sequence);
}
