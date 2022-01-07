
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twlreg_info {unsigned int base; } ;


 int twl_i2c_read_u8 (unsigned int,int*,unsigned int) ;

__attribute__((used)) static inline int
twlreg_read(struct twlreg_info *info, unsigned slave_subgp, unsigned offset)
{
 u8 value;
 int status;

 status = twl_i2c_read_u8(slave_subgp,
   &value, info->base + offset);
 return (status < 0) ? status : value;
}
