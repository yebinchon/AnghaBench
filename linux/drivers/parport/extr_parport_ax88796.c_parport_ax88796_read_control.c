
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;
struct ax_drvdata {int spp_cpr; } ;


 unsigned int AX_CPR_ATFD ;
 unsigned int AX_CPR_SLCTIN ;
 unsigned int AX_CPR_STRB ;
 unsigned int AX_CPR_nINIT ;
 unsigned int PARPORT_CONTROL_AUTOFD ;
 unsigned int PARPORT_CONTROL_INIT ;
 unsigned int PARPORT_CONTROL_SELECT ;
 unsigned int PARPORT_CONTROL_STROBE ;
 struct ax_drvdata* pp_to_drv (struct parport*) ;
 unsigned int readb (int ) ;

__attribute__((used)) static unsigned char
parport_ax88796_read_control(struct parport *p)
{
 struct ax_drvdata *dd = pp_to_drv(p);
 unsigned int cpr = readb(dd->spp_cpr);
 unsigned int ret = 0;

 if (!(cpr & AX_CPR_STRB))
  ret |= PARPORT_CONTROL_STROBE;

 if (!(cpr & AX_CPR_ATFD))
  ret |= PARPORT_CONTROL_AUTOFD;

 if (cpr & AX_CPR_nINIT)
  ret |= PARPORT_CONTROL_INIT;

 if (!(cpr & AX_CPR_SLCTIN))
  ret |= PARPORT_CONTROL_SELECT;

 return ret;
}
