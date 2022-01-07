
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int polarity; } ;
struct pwm_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;




 struct pwm_device* child_to_pwm_device (struct device*) ;
 int pwm_get_state (struct pwm_device const*,struct pwm_state*) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t polarity_show(struct device *child,
        struct device_attribute *attr,
        char *buf)
{
 const struct pwm_device *pwm = child_to_pwm_device(child);
 const char *polarity = "unknown";
 struct pwm_state state;

 pwm_get_state(pwm, &state);

 switch (state.polarity) {
 case 128:
  polarity = "normal";
  break;

 case 129:
  polarity = "inversed";
  break;
 }

 return sprintf(buf, "%s\n", polarity);
}
