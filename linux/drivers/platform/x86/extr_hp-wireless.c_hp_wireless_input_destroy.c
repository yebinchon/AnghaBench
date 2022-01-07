
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpwl_input_dev ;
 int input_unregister_device (int ) ;

__attribute__((used)) static void hp_wireless_input_destroy(void)
{
 input_unregister_device(hpwl_input_dev);
}
