
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kp2000_device {int card_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct kp2000_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t card_id_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct kp2000_device *pcard = dev_get_drvdata(dev);

 return sprintf(buf, "%08x\n", pcard->card_id);
}
