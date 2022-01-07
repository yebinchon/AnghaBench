
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb10x_pinctrl {int mutex; int gpios; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int clear_bit (unsigned int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tb10x_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static void tb10x_gpio_disable_free(struct pinctrl_dev *pctl,
     struct pinctrl_gpio_range *range,
     unsigned pin)
{
 struct tb10x_pinctrl *state = pinctrl_dev_get_drvdata(pctl);

 mutex_lock(&state->mutex);

 clear_bit(pin, state->gpios);

 mutex_unlock(&state->mutex);
}
