
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int * inputdev; } ;


 int input_unregister_device (int *) ;

__attribute__((used)) static void eeepc_input_exit(struct eeepc_laptop *eeepc)
{
 if (eeepc->inputdev)
  input_unregister_device(eeepc->inputdev);
 eeepc->inputdev = ((void*)0);
}
