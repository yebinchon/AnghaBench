
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3020 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int gpio_free_array (int ,int ) ;
 int v3020_gpio ;

__attribute__((used)) static void v3020_gpio_unmap(struct v3020 *chip)
{
 gpio_free_array(v3020_gpio, ARRAY_SIZE(v3020_gpio));
}
