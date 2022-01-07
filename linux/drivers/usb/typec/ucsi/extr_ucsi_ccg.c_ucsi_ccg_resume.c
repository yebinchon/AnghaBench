
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int ucsi; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 struct ucsi_ccg* i2c_get_clientdata (struct i2c_client*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int ucsi_resume (int ) ;

__attribute__((used)) static int ucsi_ccg_resume(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct ucsi_ccg *uc = i2c_get_clientdata(client);

 return ucsi_resume(uc->ucsi);
}
