
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int is_typec_partner (struct device*) ;

__attribute__((used)) static int partner_match(struct device *dev, void *data)
{
 return is_typec_partner(dev);
}
