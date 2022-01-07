
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {struct fake_driver* driver_priv; } ;
struct fake_driver {int int_level; int int_statid; int vme_int; int int_tasklet; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int fake_irq_generate(struct vme_bridge *fake_bridge, int level,
  int statid)
{
 struct fake_driver *bridge;

 bridge = fake_bridge->driver_priv;

 mutex_lock(&bridge->vme_int);

 bridge->int_level = level;

 bridge->int_statid = statid;





 tasklet_schedule(&bridge->int_tasklet);

 mutex_unlock(&bridge->vme_int);

 return 0;
}
