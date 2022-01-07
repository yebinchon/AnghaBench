
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdw_slave {int dummy; } ;


 int sdw_nread (struct sdw_slave*,int ,int,int*) ;

int sdw_read(struct sdw_slave *slave, u32 addr)
{
 u8 buf;
 int ret;

 ret = sdw_nread(slave, addr, 1, &buf);
 if (ret < 0)
  return ret;
 else
  return buf;
}
