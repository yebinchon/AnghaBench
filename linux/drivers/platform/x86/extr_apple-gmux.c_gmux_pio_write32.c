
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct apple_gmux_data {scalar_t__ iostart; } ;


 int outb (int,scalar_t__) ;

__attribute__((used)) static void gmux_pio_write32(struct apple_gmux_data *gmux_data, int port,
        u32 val)
{
 int i;
 u8 tmpval;

 for (i = 0; i < 4; i++) {
  tmpval = (val >> (i * 8)) & 0xff;
  outb(tmpval, gmux_data->iostart + port + i);
 }
}
