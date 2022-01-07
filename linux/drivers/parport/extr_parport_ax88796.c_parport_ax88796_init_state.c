
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpr; } ;
struct TYPE_4__ {TYPE_1__ ax88796; } ;
struct parport_state {TYPE_2__ u; } ;
struct pardevice {int port; } ;
struct ax_drvdata {int spp_cpr; int dev; } ;


 int dev_dbg (int ,char*,struct pardevice*,struct parport_state*) ;
 int memset (struct parport_state*,int ,int) ;
 struct ax_drvdata* pp_to_drv (int ) ;
 int readb (int ) ;

__attribute__((used)) static void
parport_ax88796_init_state(struct pardevice *d, struct parport_state *s)
{
 struct ax_drvdata *dd = pp_to_drv(d->port);

 memset(s, 0, sizeof(struct parport_state));

 dev_dbg(dd->dev, "init_state: %p: state=%p\n", d, s);
 s->u.ax88796.cpr = readb(dd->spp_cpr);
}
