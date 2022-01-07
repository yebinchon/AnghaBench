
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;
struct ax_drvdata {int dev; } ;


 int dev_dbg (int ,char*,unsigned char,unsigned char,unsigned char) ;
 unsigned char parport_ax88796_read_control (struct parport*) ;
 int parport_ax88796_write_control (struct parport*,unsigned char) ;
 struct ax_drvdata* pp_to_drv (struct parport*) ;

__attribute__((used)) static unsigned char
parport_ax88796_frob_control(struct parport *p, unsigned char mask,
        unsigned char val)
{
 struct ax_drvdata *dd = pp_to_drv(p);
 unsigned char old = parport_ax88796_read_control(p);

 dev_dbg(dd->dev, "frob: mask=%02x, val=%02x, old=%02x\n",
  mask, val, old);

 parport_ax88796_write_control(p, (old & ~mask) | val);
 return old;
}
