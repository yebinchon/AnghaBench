
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtn_data {int * input_dev; } ;


 int input_unregister_device (int *) ;

__attribute__((used)) static void rbtn_input_exit(struct rbtn_data *rbtn_data)
{
 input_unregister_device(rbtn_data->input_dev);
 rbtn_data->input_dev = ((void*)0);
}
