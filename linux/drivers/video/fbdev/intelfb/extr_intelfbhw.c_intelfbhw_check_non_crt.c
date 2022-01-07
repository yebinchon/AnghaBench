
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intelfb_info {int dummy; } ;


 int DVOA ;
 int DVOA_PORT ;
 int DVOB ;
 int DVOB_PORT ;
 int DVOC ;
 int DVOC_PORT ;
 int INREG (int ) ;
 int LVDS ;
 int LVDS_PORT ;
 int PORT_ENABLE ;

int intelfbhw_check_non_crt(struct intelfb_info *dinfo)
{
 int dvo = 0;

 if (INREG(LVDS) & PORT_ENABLE)
  dvo |= LVDS_PORT;
 if (INREG(DVOA) & PORT_ENABLE)
  dvo |= DVOA_PORT;
 if (INREG(DVOB) & PORT_ENABLE)
  dvo |= DVOB_PORT;
 if (INREG(DVOC) & PORT_ENABLE)
  dvo |= DVOC_PORT;

 return dvo;
}
