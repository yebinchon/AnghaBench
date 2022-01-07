
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCM590XX_CSRPMCTRL1 ;
 int BCM590XX_GPLDO1PMCTRL1 ;
 int BCM590XX_IOSR1PMCTRL1 ;
 int BCM590XX_IOSR2PMCTRL1 ;
 int BCM590XX_MSRPMCTRL1 ;
 int BCM590XX_OTG_CTRL ;



 scalar_t__ BCM590XX_REG_IS_GPLDO (int) ;
 scalar_t__ BCM590XX_REG_IS_LDO (int) ;





 int BCM590XX_RFLDOPMCTRL1 ;
 int BCM590XX_SDSR1PMCTRL1 ;
 int BCM590XX_SDSR2PMCTRL1 ;
 int BCM590XX_VSRPMCTRL1 ;

__attribute__((used)) static int bcm590xx_get_enable_register(int id)
{
 int reg = 0;

 if (BCM590XX_REG_IS_LDO(id))
  reg = BCM590XX_RFLDOPMCTRL1 + id * 2;
 else if (BCM590XX_REG_IS_GPLDO(id))
  reg = BCM590XX_GPLDO1PMCTRL1 + id * 2;
 else
  switch (id) {
  case 135:
   reg = BCM590XX_CSRPMCTRL1;
   break;
  case 134:
   reg = BCM590XX_IOSR1PMCTRL1;
   break;
  case 133:
   reg = BCM590XX_IOSR2PMCTRL1;
   break;
  case 132:
   reg = BCM590XX_MSRPMCTRL1;
   break;
  case 131:
   reg = BCM590XX_SDSR1PMCTRL1;
   break;
  case 130:
   reg = BCM590XX_SDSR2PMCTRL1;
   break;
  case 128:
   reg = BCM590XX_VSRPMCTRL1;
   break;
  case 129:
   reg = BCM590XX_OTG_CTRL;
   break;
  }


 return reg;
}
