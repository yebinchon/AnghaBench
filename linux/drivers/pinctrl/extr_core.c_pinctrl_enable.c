
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int node; int mutex; int dev; } ;


 int dev_err (int ,char*,int) ;
 int kfree (struct pinctrl_dev*) ;
 int list_add_tail (int *,int *) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pinctrl_claim_hogs (struct pinctrl_dev*) ;
 int pinctrl_init_device_debugfs (struct pinctrl_dev*) ;
 int pinctrldev_list ;
 int pinctrldev_list_mutex ;

int pinctrl_enable(struct pinctrl_dev *pctldev)
{
 int error;

 error = pinctrl_claim_hogs(pctldev);
 if (error) {
  dev_err(pctldev->dev, "could not claim hogs: %i\n",
   error);
  mutex_destroy(&pctldev->mutex);
  kfree(pctldev);

  return error;
 }

 mutex_lock(&pinctrldev_list_mutex);
 list_add_tail(&pctldev->node, &pinctrldev_list);
 mutex_unlock(&pinctrldev_list_mutex);

 pinctrl_init_device_debugfs(pctldev);

 return 0;
}
