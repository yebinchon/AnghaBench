
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb10x_pinctrl {int mutex; } ;
struct platform_device {int dummy; } ;


 int mutex_destroy (int *) ;
 struct tb10x_pinctrl* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tb10x_pinctrl_remove(struct platform_device *pdev)
{
 struct tb10x_pinctrl *state = platform_get_drvdata(pdev);

 mutex_destroy(&state->mutex);

 return 0;
}
