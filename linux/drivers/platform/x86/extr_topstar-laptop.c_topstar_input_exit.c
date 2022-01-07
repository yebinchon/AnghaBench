
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_laptop {int input; } ;


 int input_unregister_device (int ) ;

__attribute__((used)) static void topstar_input_exit(struct topstar_laptop *topstar)
{
 input_unregister_device(topstar->input);
}
