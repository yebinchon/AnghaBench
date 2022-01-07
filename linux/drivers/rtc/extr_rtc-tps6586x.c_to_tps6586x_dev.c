
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device* parent; } ;



__attribute__((used)) static inline struct device *to_tps6586x_dev(struct device *dev)
{
 return dev->parent;
}
