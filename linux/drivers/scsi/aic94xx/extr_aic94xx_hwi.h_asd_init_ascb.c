
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asd_ha_struct {int dummy; } ;
struct TYPE_2__ {int vaddr; } ;
struct asd_ascb {int tc_index; int timer; struct asd_ha_struct* ha; TYPE_1__ dma_scb; int scb; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int timer_setup (int *,int *,int ) ;

__attribute__((used)) static inline void asd_init_ascb(struct asd_ha_struct *asd_ha,
     struct asd_ascb *ascb)
{
 INIT_LIST_HEAD(&ascb->list);
 ascb->scb = ascb->dma_scb.vaddr;
 ascb->ha = asd_ha;
 timer_setup(&ascb->timer, ((void*)0), 0);
 ascb->tc_index = -1;
}
