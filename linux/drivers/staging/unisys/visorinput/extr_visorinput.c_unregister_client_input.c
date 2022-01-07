
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int input_unregister_device (struct input_dev*) ;

__attribute__((used)) static void unregister_client_input(struct input_dev *visorinput_dev)
{
 if (visorinput_dev)
  input_unregister_device(visorinput_dev);
}
