
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ssb_bus {int dummy; } ;


 int COR_FUNC_ENA ;
 int COR_IREQ_ENA ;
 int COR_LEVEL_REQ ;
 int COR_SOFT_RESET ;
 int msleep (int) ;
 int ssb_pcmcia_cfg_read (struct ssb_bus*,int,int*) ;
 int ssb_pcmcia_cfg_write (struct ssb_bus*,int,int) ;

__attribute__((used)) static int ssb_pcmcia_cor_setup(struct ssb_bus *bus, u8 cor)
{
 u8 val;
 int err;

 err = ssb_pcmcia_cfg_read(bus, cor, &val);
 if (err)
  return err;
 val &= ~COR_SOFT_RESET;
 val |= COR_FUNC_ENA | COR_IREQ_ENA | COR_LEVEL_REQ;
 err = ssb_pcmcia_cfg_write(bus, cor, val);
 if (err)
  return err;
 msleep(40);

 return 0;
}
