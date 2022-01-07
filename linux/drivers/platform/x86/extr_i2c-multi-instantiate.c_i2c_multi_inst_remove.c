
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_multi_inst_data {int num_clients; int * clients; } ;


 int i2c_unregister_device (int ) ;
 struct i2c_multi_inst_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int i2c_multi_inst_remove(struct platform_device *pdev)
{
 struct i2c_multi_inst_data *multi = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < multi->num_clients; i++)
  i2c_unregister_device(multi->clients[i]);

 return 0;
}
