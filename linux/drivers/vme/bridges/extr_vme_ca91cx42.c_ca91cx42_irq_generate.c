
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {struct ca91cx42_driver* driver_priv; } ;
struct ca91cx42_driver {int vme_int; scalar_t__ base; int iack_queue; } ;


 int EINVAL ;
 scalar_t__ STATID ;
 scalar_t__ VINT_EN ;
 int ca91cx42_iack_received (struct ca91cx42_driver*,int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int ca91cx42_irq_generate(struct vme_bridge *ca91cx42_bridge, int level,
 int statid)
{
 u32 tmp;
 struct ca91cx42_driver *bridge;

 bridge = ca91cx42_bridge->driver_priv;


 if (statid & 1)
  return -EINVAL;

 mutex_lock(&bridge->vme_int);

 tmp = ioread32(bridge->base + VINT_EN);


 iowrite32(statid << 24, bridge->base + STATID);


 tmp = tmp | (1 << (level + 24));
 iowrite32(tmp, bridge->base + VINT_EN);


 wait_event_interruptible(bridge->iack_queue,
     ca91cx42_iack_received(bridge, level));


 tmp = ioread32(bridge->base + VINT_EN);
 tmp = tmp & ~(1 << (level + 24));
 iowrite32(tmp, bridge->base + VINT_EN);

 mutex_unlock(&bridge->vme_int);

 return 0;
}
