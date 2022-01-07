
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdw_slave {int dummy; } ;


 int sdw_nwrite (struct sdw_slave*,int ,int,int *) ;

int sdw_write(struct sdw_slave *slave, u32 addr, u8 value)
{
 return sdw_nwrite(slave, addr, 1, &value);
}
