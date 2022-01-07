
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sw_i2c_scl (int) ;
 int sw_i2c_sda (int) ;

__attribute__((used)) static void sw_i2c_stop(void)
{

 sw_i2c_scl(1);
 sw_i2c_sda(0);
 sw_i2c_sda(1);
}
