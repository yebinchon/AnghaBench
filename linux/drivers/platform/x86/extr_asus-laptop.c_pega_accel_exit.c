
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int * pega_accel_poll; } ;


 int input_free_polled_device (int *) ;
 int input_unregister_polled_device (int *) ;

__attribute__((used)) static void pega_accel_exit(struct asus_laptop *asus)
{
 if (asus->pega_accel_poll) {
  input_unregister_polled_device(asus->pega_accel_poll);
  input_free_polled_device(asus->pega_accel_poll);
 }
 asus->pega_accel_poll = ((void*)0);
}
