
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_switch {int dev; } ;


 void* dev_get_drvdata (int *) ;

void *typec_switch_get_drvdata(struct typec_switch *sw)
{
 return dev_get_drvdata(&sw->dev);
}
