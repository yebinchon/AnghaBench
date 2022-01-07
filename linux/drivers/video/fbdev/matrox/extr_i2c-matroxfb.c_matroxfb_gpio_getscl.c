
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clock; } ;
struct i2c_bit_adapter {TYPE_1__ mask; int minfo; } ;


 int matroxfb_read_gpio (int ) ;

__attribute__((used)) static int matroxfb_gpio_getscl(void* data) {
 struct i2c_bit_adapter* b = data;
 return (matroxfb_read_gpio(b->minfo) & b->mask.clock) ? 1 : 0;
}
