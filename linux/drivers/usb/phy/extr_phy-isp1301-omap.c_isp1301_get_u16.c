
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isp1301 {int client; } ;


 int i2c_smbus_read_word_data (int ,int ) ;

__attribute__((used)) static inline int
isp1301_get_u16(struct isp1301 *isp, u8 reg)
{
 return i2c_smbus_read_word_data(isp->client, reg);
}
