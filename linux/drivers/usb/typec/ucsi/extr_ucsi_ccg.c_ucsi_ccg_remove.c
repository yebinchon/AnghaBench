
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int irq; int dev; int ucsi; int work; int pm_work; } ;
struct i2c_client {int dummy; } ;


 int cancel_work_sync (int *) ;
 int free_irq (int ,struct ucsi_ccg*) ;
 struct ucsi_ccg* i2c_get_clientdata (struct i2c_client*) ;
 int pm_runtime_disable (int ) ;
 int ucsi_unregister_ppm (int ) ;

__attribute__((used)) static int ucsi_ccg_remove(struct i2c_client *client)
{
 struct ucsi_ccg *uc = i2c_get_clientdata(client);

 cancel_work_sync(&uc->pm_work);
 cancel_work_sync(&uc->work);
 ucsi_unregister_ppm(uc->ucsi);
 pm_runtime_disable(uc->dev);
 free_irq(uc->irq, uc);

 return 0;
}
