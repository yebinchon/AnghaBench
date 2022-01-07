
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_smbios_priv {scalar_t__ buf; int req_buf_size; int list; } ;
struct wmi_device {int dev; } ;


 int call_mutex ;
 int dell_smbios_unregister_device (int *) ;
 struct wmi_smbios_priv* dev_get_drvdata (int *) ;
 int free_pages (unsigned long,int) ;
 int get_order (int ) ;
 int list_del (int *) ;
 int list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dell_smbios_wmi_remove(struct wmi_device *wdev)
{
 struct wmi_smbios_priv *priv = dev_get_drvdata(&wdev->dev);
 int count;

 mutex_lock(&call_mutex);
 mutex_lock(&list_mutex);
 list_del(&priv->list);
 mutex_unlock(&list_mutex);
 dell_smbios_unregister_device(&wdev->dev);
 count = get_order(priv->req_buf_size);
 free_pages((unsigned long)priv->buf, count);
 mutex_unlock(&call_mutex);
 return 0;
}
