
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void sw_i2c_wait(void)
{
 int i, tmp;

 for (i = 0; i < 600; i++) {
  tmp = i;
  tmp += i;
 }
}
