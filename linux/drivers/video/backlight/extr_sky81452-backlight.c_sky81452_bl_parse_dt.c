
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky81452_bl_platform_data {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct sky81452_bl_platform_data* ERR_PTR (int ) ;

__attribute__((used)) static struct sky81452_bl_platform_data *sky81452_bl_parse_dt(
       struct device *dev)
{
 return ERR_PTR(-EINVAL);
}
