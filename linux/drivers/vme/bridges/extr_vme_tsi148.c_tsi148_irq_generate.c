
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {int vme_int; int iack_queue; scalar_t__ base; } ;


 scalar_t__ TSI148_LCSR_VICR ;
 int* TSI148_LCSR_VICR_IRQL ;
 int TSI148_LCSR_VICR_STID_M ;
 int ioread32be (scalar_t__) ;
 int iowrite32be (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tsi148_iack_received (struct tsi148_driver*) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int tsi148_irq_generate(struct vme_bridge *tsi148_bridge, int level,
 int statid)
{
 u32 tmp;
 struct tsi148_driver *bridge;

 bridge = tsi148_bridge->driver_priv;

 mutex_lock(&bridge->vme_int);


 tmp = ioread32be(bridge->base + TSI148_LCSR_VICR);


 tmp = (tmp & ~TSI148_LCSR_VICR_STID_M) |
  (statid & TSI148_LCSR_VICR_STID_M);
 iowrite32be(tmp, bridge->base + TSI148_LCSR_VICR);


 tmp = tmp | TSI148_LCSR_VICR_IRQL[level];
 iowrite32be(tmp, bridge->base + TSI148_LCSR_VICR);


 wait_event_interruptible(bridge->iack_queue,
  tsi148_iack_received(bridge));

 mutex_unlock(&bridge->vme_int);

 return 0;
}
