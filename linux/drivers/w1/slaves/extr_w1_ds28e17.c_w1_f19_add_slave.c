
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct w1_slave {int dev; int name; struct w1_f19_data* family_data; } ;
struct TYPE_3__ {int * parent; } ;
struct TYPE_4__ {int * quirks; TYPE_1__ dev; int name; struct w1_slave* algo_data; int * algo; int owner; } ;
struct w1_f19_data {int speed; TYPE_2__ adapter; int stretch; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int __w1_f19_set_i2c_speed (struct w1_slave*,int) ;
 struct w1_f19_data* devm_kzalloc (int *,int,int ) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int i2c_speed ;
 int i2c_stretch ;
 int strcat (int ,int ) ;
 int strcpy (int ,char*) ;
 int w1_f19_i2c_adapter_quirks ;
 int w1_f19_i2c_algorithm ;

__attribute__((used)) static int w1_f19_add_slave(struct w1_slave *sl)
{
 struct w1_f19_data *data = ((void*)0);


 data = devm_kzalloc(&sl->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 sl->family_data = data;


 switch (i2c_speed) {
 case 100:
  __w1_f19_set_i2c_speed(sl, 0);
  break;
 case 400:
  __w1_f19_set_i2c_speed(sl, 1);
  break;
 case 900:
  __w1_f19_set_i2c_speed(sl, 2);
  break;
 default:






  data->speed = 1;
 }





 data->stretch = i2c_stretch;


 data->adapter.owner = THIS_MODULE;
 data->adapter.algo = &w1_f19_i2c_algorithm;
 data->adapter.algo_data = sl;
 strcpy(data->adapter.name, "w1-");
 strcat(data->adapter.name, sl->name);
 data->adapter.dev.parent = &sl->dev;
 data->adapter.quirks = &w1_f19_i2c_adapter_quirks;

 return i2c_add_adapter(&data->adapter);
}
