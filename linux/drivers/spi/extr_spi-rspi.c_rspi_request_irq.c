
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int irq_handler_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 char* devm_kasprintf (struct device*,int ,char*,int ,char const*) ;
 int devm_request_irq (struct device*,unsigned int,int ,int ,char const*,void*) ;

__attribute__((used)) static int rspi_request_irq(struct device *dev, unsigned int irq,
       irq_handler_t handler, const char *suffix,
       void *dev_id)
{
 const char *name = devm_kasprintf(dev, GFP_KERNEL, "%s:%s",
       dev_name(dev), suffix);
 if (!name)
  return -ENOMEM;

 return devm_request_irq(dev, irq, handler, 0, name, dev_id);
}
