
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {TYPE_1__* ops; } ;
struct rt2800_ops {int (* register_read ) (struct rt2x00_dev*,unsigned int const) ;} ;
struct TYPE_2__ {struct rt2800_ops* drv; } ;


 int stub1 (struct rt2x00_dev*,unsigned int const) ;

__attribute__((used)) static inline u32 rt2800_register_read(struct rt2x00_dev *rt2x00dev,
           const unsigned int offset)
{
 const struct rt2800_ops *rt2800ops = rt2x00dev->ops->drv;

 return rt2800ops->register_read(rt2x00dev, offset);
}
