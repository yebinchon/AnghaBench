
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ssb_bus {int host_pcmcia; } ;


 int EBUSY ;
 int pcmcia_read_config_byte (int ,int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ssb_pcmcia_cfg_read(struct ssb_bus *bus, u8 offset, u8 *value)
{
 int res;

 res = pcmcia_read_config_byte(bus->host_pcmcia, offset, value);
 if (unlikely(res != 0))
  return -EBUSY;

 return 0;
}
