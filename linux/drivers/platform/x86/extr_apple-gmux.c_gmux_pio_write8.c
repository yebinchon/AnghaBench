
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apple_gmux_data {scalar_t__ iostart; } ;


 int outb (int ,scalar_t__) ;

__attribute__((used)) static void gmux_pio_write8(struct apple_gmux_data *gmux_data, int port,
          u8 val)
{
 outb(val, gmux_data->iostart + port);
}
