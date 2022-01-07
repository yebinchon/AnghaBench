
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_data {int consumer; int ret; } ;
typedef int async_cookie_t ;


 int regulator_enable (int ) ;

__attribute__((used)) static void regulator_bulk_enable_async(void *data, async_cookie_t cookie)
{
 struct regulator_bulk_data *bulk = data;

 bulk->ret = regulator_enable(bulk->consumer);
}
