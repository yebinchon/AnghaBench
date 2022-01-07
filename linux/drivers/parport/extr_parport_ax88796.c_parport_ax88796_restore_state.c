
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpr; } ;
struct TYPE_4__ {TYPE_1__ ax88796; } ;
struct parport_state {TYPE_2__ u; } ;
struct parport {int dummy; } ;
struct ax_drvdata {int spp_cpr; int dev; } ;


 int dev_dbg (int ,char*,struct parport*,struct parport_state*) ;
 struct ax_drvdata* pp_to_drv (struct parport*) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void
parport_ax88796_restore_state(struct parport *p, struct parport_state *s)
{
 struct ax_drvdata *dd = pp_to_drv(p);

 dev_dbg(dd->dev, "restore_state: %p: state=%p\n", p, s);
 writeb(s->u.ax88796.cpr, dd->spp_cpr);
}
