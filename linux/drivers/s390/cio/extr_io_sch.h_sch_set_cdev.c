
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;
struct io_subchannel_private {struct ccw_device* cdev; } ;
struct ccw_device {int dummy; } ;


 struct io_subchannel_private* to_io_private (struct subchannel*) ;

__attribute__((used)) static inline void sch_set_cdev(struct subchannel *sch,
    struct ccw_device *cdev)
{
 struct io_subchannel_private *priv = to_io_private(sch);
 if (priv)
  priv->cdev = cdev;
}
