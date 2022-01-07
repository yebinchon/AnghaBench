
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct arcxcnn {int client; } ;


 int ARCXCNN_WLED_ISET_LSB ;
 int ARCXCNN_WLED_ISET_LSB_SHIFT ;
 int ARCXCNN_WLED_ISET_MSB ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int arcxcnn_set_brightness(struct arcxcnn *lp, u32 brightness)
{
 int ret;
 u8 val;


 val = (brightness & 0xF) << ARCXCNN_WLED_ISET_LSB_SHIFT;
 ret = i2c_smbus_write_byte_data(lp->client,
  ARCXCNN_WLED_ISET_LSB, val);
 if (ret < 0)
  return ret;


 val = (brightness >> 4);
 return i2c_smbus_write_byte_data(lp->client,
  ARCXCNN_WLED_ISET_MSB, val);
}
