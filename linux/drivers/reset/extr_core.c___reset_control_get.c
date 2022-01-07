
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int dummy; } ;
struct device {scalar_t__ of_node; } ;


 int EINVAL ;
 struct reset_control* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct reset_control* __of_reset_control_get (scalar_t__,char const*,int,int,int,int) ;
 struct reset_control* __reset_control_get_from_lookup (struct device*,char const*,int,int,int) ;

struct reset_control *__reset_control_get(struct device *dev, const char *id,
       int index, bool shared, bool optional,
       bool acquired)
{
 if (WARN_ON(shared && acquired))
  return ERR_PTR(-EINVAL);

 if (dev->of_node)
  return __of_reset_control_get(dev->of_node, id, index, shared,
           optional, acquired);

 return __reset_control_get_from_lookup(dev, id, shared, optional,
            acquired);
}
