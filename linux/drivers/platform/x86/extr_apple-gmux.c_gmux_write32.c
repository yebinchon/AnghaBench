
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct apple_gmux_data {scalar_t__ indexed; } ;


 int gmux_index_write32 (struct apple_gmux_data*,int,int ) ;
 int gmux_pio_write32 (struct apple_gmux_data*,int,int ) ;

__attribute__((used)) static void gmux_write32(struct apple_gmux_data *gmux_data, int port,
        u32 val)
{
 if (gmux_data->indexed)
  gmux_index_write32(gmux_data, port, val);
 else
  gmux_pio_write32(gmux_data, port, val);
}
