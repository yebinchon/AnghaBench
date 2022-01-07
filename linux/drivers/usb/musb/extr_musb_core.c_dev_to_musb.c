
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int dummy; } ;
struct device {int dummy; } ;


 struct musb* dev_get_drvdata (struct device*) ;

__attribute__((used)) static inline struct musb *dev_to_musb(struct device *dev)
{
 return dev_get_drvdata(dev);
}
