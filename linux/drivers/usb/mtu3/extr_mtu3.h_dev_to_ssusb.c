
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int dummy; } ;
struct device {int dummy; } ;


 struct ssusb_mtk* dev_get_drvdata (struct device*) ;

__attribute__((used)) static inline struct ssusb_mtk *dev_to_ssusb(struct device *dev)
{
 return dev_get_drvdata(dev);
}
