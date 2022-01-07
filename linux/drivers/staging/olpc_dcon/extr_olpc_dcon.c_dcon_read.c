
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dcon_priv {int client; } ;
typedef int s32 ;


 int i2c_smbus_read_word_data (int ,int ) ;

__attribute__((used)) static s32 dcon_read(struct dcon_priv *dcon, u8 reg)
{
 return i2c_smbus_read_word_data(dcon->client, reg);
}
