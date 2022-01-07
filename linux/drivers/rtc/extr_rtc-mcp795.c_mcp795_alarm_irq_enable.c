
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int mcp795_update_alarm (struct device*,int) ;

__attribute__((used)) static int mcp795_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 return mcp795_update_alarm(dev, !!enabled);
}
