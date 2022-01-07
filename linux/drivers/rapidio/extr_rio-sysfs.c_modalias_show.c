
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int vid; int did; int asm_vid; int asm_did; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int,int,int) ;
 struct rio_dev* to_rio_dev (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct rio_dev *rdev = to_rio_dev(dev);

 return sprintf(buf, "rapidio:v%04Xd%04Xav%04Xad%04X\n",
         rdev->vid, rdev->did, rdev->asm_vid, rdev->asm_did);
}
