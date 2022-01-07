
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ism_dev {int dummy; } ;
struct device {int dummy; } ;


 struct ism_dev* dev_get_drvdata (struct device*) ;
 int ism_dev_init (struct ism_dev*) ;

__attribute__((used)) static int ism_resume(struct device *dev)
{
 struct ism_dev *ism = dev_get_drvdata(dev);

 return ism_dev_init(ism);
}
