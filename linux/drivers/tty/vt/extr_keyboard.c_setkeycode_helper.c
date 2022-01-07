
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dev; } ;
struct getset_keycode_data {scalar_t__ error; int ke; } ;


 scalar_t__ input_set_keycode (int ,int *) ;

__attribute__((used)) static int setkeycode_helper(struct input_handle *handle, void *data)
{
 struct getset_keycode_data *d = data;

 d->error = input_set_keycode(handle->dev, &d->ke);

 return d->error == 0;
}
