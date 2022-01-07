
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_device {int dev; } ;
struct descriptor_priv {int list; } ;


 struct descriptor_priv* dev_get_drvdata (int *) ;
 int list_del (int *) ;
 int list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dell_wmi_descriptor_remove(struct wmi_device *wdev)
{
 struct descriptor_priv *priv = dev_get_drvdata(&wdev->dev);

 mutex_lock(&list_mutex);
 list_del(&priv->list);
 mutex_unlock(&list_mutex);
 return 0;
}
