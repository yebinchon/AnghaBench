
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int * inputdev; } ;


 int input_unregister_device (int *) ;

__attribute__((used)) static void asus_wmi_input_exit(struct asus_wmi *asus)
{
 if (asus->inputdev)
  input_unregister_device(asus->inputdev);

 asus->inputdev = ((void*)0);
}
