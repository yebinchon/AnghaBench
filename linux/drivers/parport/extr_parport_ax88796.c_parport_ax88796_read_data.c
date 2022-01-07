
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;
struct ax_drvdata {int spp_data; } ;


 struct ax_drvdata* pp_to_drv (struct parport*) ;
 unsigned char readb (int ) ;

__attribute__((used)) static unsigned char
parport_ax88796_read_data(struct parport *p)
{
 struct ax_drvdata *dd = pp_to_drv(p);

 return readb(dd->spp_data);
}
