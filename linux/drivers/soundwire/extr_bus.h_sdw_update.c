
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdw_slave {int dummy; } ;


 int sdw_read (struct sdw_slave*,int ) ;
 int sdw_write (struct sdw_slave*,int ,int) ;

__attribute__((used)) static inline int
sdw_update(struct sdw_slave *slave, u32 addr, u8 mask, u8 val)
{
 int tmp;

 tmp = sdw_read(slave, addr);
 if (tmp < 0)
  return tmp;

 tmp = (tmp & ~mask) | val;
 return sdw_write(slave, addr, tmp);
}
