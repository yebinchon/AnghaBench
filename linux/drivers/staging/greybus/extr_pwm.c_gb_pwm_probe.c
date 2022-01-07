
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_chip {int base; scalar_t__ npwm; int * ops; int * dev; } ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int dev; TYPE_1__* cport_desc; int bundle; } ;
struct gb_pwm_chip {scalar_t__ pwm_max; struct pwm_chip chip; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int dev_err (int *,char*,int) ;
 struct gb_connection* gb_connection_create (int ,int ,int *) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_pwm_chip*) ;
 int gb_gbphy_set_data (struct gbphy_device*,struct gb_pwm_chip*) ;
 int gb_pwm_count_operation (struct gb_pwm_chip*) ;
 int gb_pwm_ops ;
 int gbphy_runtime_put_autosuspend (struct gbphy_device*) ;
 int kfree (struct gb_pwm_chip*) ;
 struct gb_pwm_chip* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int pwmchip_add (struct pwm_chip*) ;

__attribute__((used)) static int gb_pwm_probe(struct gbphy_device *gbphy_dev,
   const struct gbphy_device_id *id)
{
 struct gb_connection *connection;
 struct gb_pwm_chip *pwmc;
 struct pwm_chip *pwm;
 int ret;

 pwmc = kzalloc(sizeof(*pwmc), GFP_KERNEL);
 if (!pwmc)
  return -ENOMEM;

 connection = gb_connection_create(gbphy_dev->bundle,
       le16_to_cpu(gbphy_dev->cport_desc->id),
       ((void*)0));
 if (IS_ERR(connection)) {
  ret = PTR_ERR(connection);
  goto exit_pwmc_free;
 }

 pwmc->connection = connection;
 gb_connection_set_data(connection, pwmc);
 gb_gbphy_set_data(gbphy_dev, pwmc);

 ret = gb_connection_enable(connection);
 if (ret)
  goto exit_connection_destroy;


 ret = gb_pwm_count_operation(pwmc);
 if (ret)
  goto exit_connection_disable;

 pwm = &pwmc->chip;

 pwm->dev = &gbphy_dev->dev;
 pwm->ops = &gb_pwm_ops;
 pwm->base = -1;
 pwm->npwm = pwmc->pwm_max + 1;

 ret = pwmchip_add(pwm);
 if (ret) {
  dev_err(&gbphy_dev->dev,
   "failed to register PWM: %d\n", ret);
  goto exit_connection_disable;
 }

 gbphy_runtime_put_autosuspend(gbphy_dev);
 return 0;

exit_connection_disable:
 gb_connection_disable(connection);
exit_connection_destroy:
 gb_connection_destroy(connection);
exit_pwmc_free:
 kfree(pwmc);
 return ret;
}
