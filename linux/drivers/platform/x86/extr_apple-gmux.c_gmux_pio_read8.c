
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apple_gmux_data {scalar_t__ iostart; } ;


 int inb (scalar_t__) ;

__attribute__((used)) static u8 gmux_pio_read8(struct apple_gmux_data *gmux_data, int port)
{
 return inb(gmux_data->iostart + port);
}
