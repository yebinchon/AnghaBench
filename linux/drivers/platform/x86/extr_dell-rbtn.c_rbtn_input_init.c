
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rbtn_data {TYPE_2__* input_dev; } ;
struct TYPE_5__ {int bustype; } ;
struct TYPE_6__ {char* name; char* phys; int keybit; int * evbit; TYPE_1__ id; } ;


 int BIT (int ) ;
 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int KEY_RFKILL ;
 TYPE_2__* input_allocate_device () ;
 int input_free_device (TYPE_2__*) ;
 int input_register_device (TYPE_2__*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int rbtn_input_init(struct rbtn_data *rbtn_data)
{
 int ret;

 rbtn_data->input_dev = input_allocate_device();
 if (!rbtn_data->input_dev)
  return -ENOMEM;

 rbtn_data->input_dev->name = "DELL Wireless hotkeys";
 rbtn_data->input_dev->phys = "dellabce/input0";
 rbtn_data->input_dev->id.bustype = BUS_HOST;
 rbtn_data->input_dev->evbit[0] = BIT(EV_KEY);
 set_bit(KEY_RFKILL, rbtn_data->input_dev->keybit);

 ret = input_register_device(rbtn_data->input_dev);
 if (ret) {
  input_free_device(rbtn_data->input_dev);
  rbtn_data->input_dev = ((void*)0);
  return ret;
 }

 return 0;
}
