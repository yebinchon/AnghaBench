
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_wdt {int unregister; int response; } ;
struct mei_cl_device {int dummy; } ;


 int cancel_work_sync (int *) ;
 int complete (int *) ;
 int completion_done (int *) ;
 int dbgfs_unregister (struct mei_wdt*) ;
 int kfree (struct mei_wdt*) ;
 int mei_cldev_disable (struct mei_cl_device*) ;
 struct mei_wdt* mei_cldev_get_drvdata (struct mei_cl_device*) ;
 int mei_wdt_unregister (struct mei_wdt*) ;

__attribute__((used)) static int mei_wdt_remove(struct mei_cl_device *cldev)
{
 struct mei_wdt *wdt = mei_cldev_get_drvdata(cldev);


 if (!completion_done(&wdt->response))
  complete(&wdt->response);

 cancel_work_sync(&wdt->unregister);

 mei_wdt_unregister(wdt);

 mei_cldev_disable(cldev);

 dbgfs_unregister(wdt);

 kfree(wdt);

 return 0;
}
