
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcmcia_device {int dummy; } ;
typedef int off_t ;


 int pcmcia_access_config (struct pcmcia_device*,int ,int *,int ) ;
 int pcmcia_read_cis_mem ;

int pcmcia_read_config_byte(struct pcmcia_device *p_dev, off_t where, u8 *val)
{
 return pcmcia_access_config(p_dev, where, val, pcmcia_read_cis_mem);
}
