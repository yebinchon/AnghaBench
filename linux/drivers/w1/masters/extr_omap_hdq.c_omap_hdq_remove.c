
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hdq_data {int hdq_mutex; scalar_t__ hdq_usecount; } ;


 int EBUSY ;
 int dev_dbg (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_w1_master ;
 struct hdq_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int w1_remove_master_device (int *) ;

__attribute__((used)) static int omap_hdq_remove(struct platform_device *pdev)
{
 struct hdq_data *hdq_data = platform_get_drvdata(pdev);

 mutex_lock(&hdq_data->hdq_mutex);

 if (hdq_data->hdq_usecount) {
  dev_dbg(&pdev->dev, "removed when use count is not zero\n");
  mutex_unlock(&hdq_data->hdq_mutex);
  return -EBUSY;
 }

 mutex_unlock(&hdq_data->hdq_mutex);


 pm_runtime_disable(&pdev->dev);

 w1_remove_master_device(&omap_w1_master);

 return 0;
}
