
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct r8a66597 {int max_root_hub; TYPE_1__* pdata; scalar_t__ irq_sense_low; } ;
struct TYPE_2__ {scalar_t__ endian; scalar_t__ vif; } ;


 int BEMP0 ;
 int BEMPE ;
 int BEMPENB ;
 int BIGEND ;
 int BRDY0 ;
 int BRDYE ;
 int BRDYENB ;
 int CFIFOSEL ;
 int D0FIFOSEL ;
 int D1FIFOSEL ;
 int INTENB0 ;
 int INTENB1 ;
 int INTL ;
 int LDRV ;
 int NRDYE ;
 int PINCFG ;
 int SACKE ;
 int SIGNE ;
 int SOFCFG ;
 int SYSCFG0 ;
 int TRNENSEL ;
 int USBE ;
 int r8a66597_bset (struct r8a66597*,int,int ) ;
 int r8a66597_clock_enable (struct r8a66597*) ;
 int r8a66597_enable_port (struct r8a66597*,int) ;

__attribute__((used)) static int enable_controller(struct r8a66597 *r8a66597)
{
 int ret, port;
 u16 vif = r8a66597->pdata->vif ? LDRV : 0;
 u16 irq_sense = r8a66597->irq_sense_low ? INTL : 0;
 u16 endian = r8a66597->pdata->endian ? BIGEND : 0;

 ret = r8a66597_clock_enable(r8a66597);
 if (ret < 0)
  return ret;

 r8a66597_bset(r8a66597, vif & LDRV, PINCFG);
 r8a66597_bset(r8a66597, USBE, SYSCFG0);

 r8a66597_bset(r8a66597, BEMPE | NRDYE | BRDYE, INTENB0);
 r8a66597_bset(r8a66597, irq_sense & INTL, SOFCFG);
 r8a66597_bset(r8a66597, BRDY0, BRDYENB);
 r8a66597_bset(r8a66597, BEMP0, BEMPENB);

 r8a66597_bset(r8a66597, endian & BIGEND, CFIFOSEL);
 r8a66597_bset(r8a66597, endian & BIGEND, D0FIFOSEL);
 r8a66597_bset(r8a66597, endian & BIGEND, D1FIFOSEL);
 r8a66597_bset(r8a66597, TRNENSEL, SOFCFG);

 r8a66597_bset(r8a66597, SIGNE | SACKE, INTENB1);

 for (port = 0; port < r8a66597->max_root_hub; port++)
  r8a66597_enable_port(r8a66597, port);

 return 0;
}
