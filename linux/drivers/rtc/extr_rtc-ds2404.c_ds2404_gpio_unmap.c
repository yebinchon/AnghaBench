
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gpio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ds2404_gpio ;
 int gpio_free (int ) ;

__attribute__((used)) static void ds2404_gpio_unmap(void *data)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ds2404_gpio); i++)
  gpio_free(ds2404_gpio[i].gpio);
}
