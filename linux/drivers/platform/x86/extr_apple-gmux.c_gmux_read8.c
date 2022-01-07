
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apple_gmux_data {scalar_t__ indexed; } ;


 int gmux_index_read8 (struct apple_gmux_data*,int) ;
 int gmux_pio_read8 (struct apple_gmux_data*,int) ;

__attribute__((used)) static u8 gmux_read8(struct apple_gmux_data *gmux_data, int port)
{
 if (gmux_data->indexed)
  return gmux_index_read8(gmux_data, port);
 else
  return gmux_pio_read8(gmux_data, port);
}
