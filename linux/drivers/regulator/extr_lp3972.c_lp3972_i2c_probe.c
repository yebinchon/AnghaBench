
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lp3972_platform_data {int dummy; } ;
struct lp3972 {int io_lock; int * dev; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LP3972_SYS_CONTROL1_REG ;
 int SYS_CONTROL1_INIT_MASK ;
 int SYS_CONTROL1_INIT_VAL ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 struct lp3972_platform_data* dev_get_platdata (int *) ;
 struct lp3972* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lp3972*) ;
 int lp3972_i2c_read (struct i2c_client*,int ,int,int*) ;
 int mutex_init (int *) ;
 int setup_regulators (struct lp3972*,struct lp3972_platform_data*) ;

__attribute__((used)) static int lp3972_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct lp3972 *lp3972;
 struct lp3972_platform_data *pdata = dev_get_platdata(&i2c->dev);
 int ret;
 u16 val;

 if (!pdata) {
  dev_dbg(&i2c->dev, "No platform init data supplied\n");
  return -ENODEV;
 }

 lp3972 = devm_kzalloc(&i2c->dev, sizeof(struct lp3972), GFP_KERNEL);
 if (!lp3972)
  return -ENOMEM;

 lp3972->i2c = i2c;
 lp3972->dev = &i2c->dev;

 mutex_init(&lp3972->io_lock);


 ret = lp3972_i2c_read(i2c, LP3972_SYS_CONTROL1_REG, 1, &val);
 if (ret == 0 &&
  (val & SYS_CONTROL1_INIT_MASK) != SYS_CONTROL1_INIT_VAL) {
  ret = -ENODEV;
  dev_err(&i2c->dev, "chip reported: val = 0x%x\n", val);
 }
 if (ret < 0) {
  dev_err(&i2c->dev, "failed to detect device. ret = %d\n", ret);
  return ret;
 }

 ret = setup_regulators(lp3972, pdata);
 if (ret < 0)
  return ret;

 i2c_set_clientdata(i2c, lp3972);
 return 0;
}
