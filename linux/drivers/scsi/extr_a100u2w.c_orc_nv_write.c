
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct orc_host {scalar_t__ base; } ;


 unsigned char HDO ;
 unsigned char ORC_CMD_SET_NVM ;
 scalar_t__ ORC_HCTRL ;
 scalar_t__ ORC_HDATA ;
 int outb (unsigned char,scalar_t__) ;
 scalar_t__ wait_HDO_off (struct orc_host*) ;

__attribute__((used)) static u8 orc_nv_write(struct orc_host * host, unsigned char address, unsigned char value)
{
 outb(ORC_CMD_SET_NVM, host->base + ORC_HDATA);
 outb(HDO, host->base + ORC_HCTRL);
 if (wait_HDO_off(host) == 0)
  return 0;

 outb(address, host->base + ORC_HDATA);
 outb(HDO, host->base + ORC_HCTRL);
 if (wait_HDO_off(host) == 0)
  return 0;

 outb(value, host->base + ORC_HDATA);
 outb(HDO, host->base + ORC_HCTRL);
 if (wait_HDO_off(host) == 0)
  return 0;

 return 1;
}
