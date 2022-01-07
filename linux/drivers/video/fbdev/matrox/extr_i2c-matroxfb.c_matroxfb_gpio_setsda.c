
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct i2c_bit_adapter {TYPE_1__ mask; int minfo; } ;


 int matroxfb_i2c_set (int ,int ,int) ;

__attribute__((used)) static void matroxfb_gpio_setsda(void* data, int state) {
 struct i2c_bit_adapter* b = data;
 matroxfb_i2c_set(b->minfo, b->mask.data, state);
}
