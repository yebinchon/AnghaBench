
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isp1301 {int dummy; } ;


 int ISP1301_I2C_REG_CLEAR_ADDR ;
 int __isp1301_write (struct isp1301*,int ,int ,int ) ;

__attribute__((used)) static int isp1301_clear(struct isp1301 *isp, u8 reg, u8 value)
{
 return __isp1301_write(isp, reg, value, ISP1301_I2C_REG_CLEAR_ADDR);
}
