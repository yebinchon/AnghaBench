
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdw_cdns {scalar_t__ registers; } ;


 int EAGAIN ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cdns_clear_bit(struct sdw_cdns *cdns, int offset, u32 value)
{
 int timeout = 10;
 u32 reg_read;

 writel(value, cdns->registers + offset);


 do {
  reg_read = readl(cdns->registers + offset);
  if ((reg_read & value) == 0)
   return 0;

  timeout--;
  udelay(50);
 } while (timeout != 0);

 return -EAGAIN;
}
