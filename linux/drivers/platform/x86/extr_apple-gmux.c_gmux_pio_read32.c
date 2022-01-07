
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct apple_gmux_data {scalar_t__ iostart; } ;


 int inl (scalar_t__) ;

__attribute__((used)) static u32 gmux_pio_read32(struct apple_gmux_data *gmux_data, int port)
{
 return inl(gmux_data->iostart + port);
}
