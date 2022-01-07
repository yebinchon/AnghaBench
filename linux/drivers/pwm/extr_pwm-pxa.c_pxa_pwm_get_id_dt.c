
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device_id {int dummy; } ;
struct of_device_id {struct platform_device_id const* data; } ;
struct device {int dummy; } ;


 struct of_device_id* of_match_device (int ,struct device*) ;
 int pwm_of_match ;

__attribute__((used)) static const struct platform_device_id *pxa_pwm_get_id_dt(struct device *dev)
{
 const struct of_device_id *id = of_match_device(pwm_of_match, dev);

 return id ? id->data : ((void*)0);
}
