
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_field32 {int dummy; } ;
struct rt2x00_dev {TYPE_1__* ops; } ;
struct rt2800_ops {int (* regbusy_read ) (struct rt2x00_dev*,unsigned int const,struct rt2x00_field32 const,int *) ;} ;
struct TYPE_2__ {struct rt2800_ops* drv; } ;


 int stub1 (struct rt2x00_dev*,unsigned int const,struct rt2x00_field32 const,int *) ;

__attribute__((used)) static inline int rt2800_regbusy_read(struct rt2x00_dev *rt2x00dev,
          const unsigned int offset,
          const struct rt2x00_field32 field,
          u32 *reg)
{
 const struct rt2800_ops *rt2800ops = rt2x00dev->ops->drv;

 return rt2800ops->regbusy_read(rt2x00dev, offset, field, reg);
}
