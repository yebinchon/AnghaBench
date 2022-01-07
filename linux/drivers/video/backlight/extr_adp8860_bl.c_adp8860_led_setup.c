
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adp8860_led {int id; int flags; struct i2c_client* client; } ;


 scalar_t__ ADP8860_ISC1 ;
 int ADP8860_ISCC ;
 int ADP8860_ISCT1 ;
 int ADP8860_ISCT2 ;
 int adp8860_set_bits (struct i2c_client*,int ,int) ;
 int adp8860_write (struct i2c_client*,scalar_t__,int ) ;

__attribute__((used)) static int adp8860_led_setup(struct adp8860_led *led)
{
 struct i2c_client *client = led->client;
 int ret = 0;

 ret = adp8860_write(client, ADP8860_ISC1 - led->id + 1, 0);
 ret |= adp8860_set_bits(client, ADP8860_ISCC, 1 << (led->id - 1));

 if (led->id > 4)
  ret |= adp8860_set_bits(client, ADP8860_ISCT1,
    (led->flags & 0x3) << ((led->id - 5) * 2));
 else
  ret |= adp8860_set_bits(client, ADP8860_ISCT2,
    (led->flags & 0x3) << ((led->id - 1) * 2));

 return ret;
}
