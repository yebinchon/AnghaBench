
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {struct w1_f19_data* family_data; int dev; } ;
struct w1_f19_data {int adapter; } ;


 int devm_kfree (int *,struct w1_f19_data*) ;
 int i2c_del_adapter (int *) ;

__attribute__((used)) static void w1_f19_remove_slave(struct w1_slave *sl)
{
 struct w1_f19_data *family_data = sl->family_data;


 i2c_del_adapter(&family_data->adapter);


 devm_kfree(&sl->dev, family_data);
 sl->family_data = ((void*)0);
}
