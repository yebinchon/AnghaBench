
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct berlin_pwm_channel {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct berlin_pwm_channel* kzalloc (int,int ) ;
 int pwm_set_chip_data (struct pwm_device*,struct berlin_pwm_channel*) ;

__attribute__((used)) static int berlin_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct berlin_pwm_channel *channel;

 channel = kzalloc(sizeof(*channel), GFP_KERNEL);
 if (!channel)
  return -ENOMEM;

 return pwm_set_chip_data(pwm, channel);
}
