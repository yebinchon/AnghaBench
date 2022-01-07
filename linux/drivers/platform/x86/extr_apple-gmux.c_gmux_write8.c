
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apple_gmux_data {scalar_t__ indexed; } ;


 int gmux_index_write8 (struct apple_gmux_data*,int,int ) ;
 int gmux_pio_write8 (struct apple_gmux_data*,int,int ) ;

__attribute__((used)) static void gmux_write8(struct apple_gmux_data *gmux_data, int port, u8 val)
{
 if (gmux_data->indexed)
  gmux_index_write8(gmux_data, port, val);
 else
  gmux_pio_write8(gmux_data, port, val);
}
