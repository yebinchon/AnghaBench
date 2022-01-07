
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isp1301 {int client; } ;


 int i2c_smbus_write_byte_data (int ,int,int) ;

__attribute__((used)) static int __isp1301_write(struct isp1301 *isp, u8 reg, u8 value, u8 clear)
{
 return i2c_smbus_write_byte_data(isp->client, reg | clear, value);
}
