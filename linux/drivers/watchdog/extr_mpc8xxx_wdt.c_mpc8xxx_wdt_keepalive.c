
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc8xxx_wdt_ddata {int lock; TYPE_1__* base; } ;
struct TYPE_2__ {int swsrr; } ;


 int out_be16 (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mpc8xxx_wdt_keepalive(struct mpc8xxx_wdt_ddata *ddata)
{

 spin_lock(&ddata->lock);
 out_be16(&ddata->base->swsrr, 0x556c);
 out_be16(&ddata->base->swsrr, 0xaa39);
 spin_unlock(&ddata->lock);
}
