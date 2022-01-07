
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apple_gmux_data {scalar_t__ iostart; } ;


 scalar_t__ GMUX_PORT_READ ;
 scalar_t__ GMUX_PORT_WRITE ;
 int inb (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int gmux_index_wait_ready(struct apple_gmux_data *gmux_data)
{
 int i = 200;
 u8 gwr = inb(gmux_data->iostart + GMUX_PORT_WRITE);

 while (i && (gwr & 0x01)) {
  inb(gmux_data->iostart + GMUX_PORT_READ);
  gwr = inb(gmux_data->iostart + GMUX_PORT_WRITE);
  udelay(100);
  i--;
 }

 return !!i;
}
