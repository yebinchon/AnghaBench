
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; } ;
struct tape_device {TYPE_1__ char_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct tape_device* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
tape_blocksize_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct tape_device *tdev;

 tdev = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "%i\n", tdev->char_data.block_size);
}
