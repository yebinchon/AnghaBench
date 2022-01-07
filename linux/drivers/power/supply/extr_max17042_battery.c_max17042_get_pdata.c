
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max17042_platform_data {int dummy; } ;
struct max17042_chip {TYPE_1__* client; } ;
struct device {struct max17042_platform_data* platform_data; scalar_t__ of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 struct max17042_platform_data* max17042_get_default_pdata (struct max17042_chip*) ;
 struct max17042_platform_data* max17042_get_of_pdata (struct max17042_chip*) ;

__attribute__((used)) static struct max17042_platform_data *
max17042_get_pdata(struct max17042_chip *chip)
{
 struct device *dev = &chip->client->dev;





 if (dev->platform_data)
  return dev->platform_data;

 return max17042_get_default_pdata(chip);
}
