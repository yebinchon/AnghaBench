
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int wmi_lock; } ;
struct asus_rfkill {struct asus_wmi* asus; } ;


 int asus_rfkill_set (void*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int asus_rfkill_wlan_set(void *data, bool blocked)
{
 struct asus_rfkill *priv = data;
 struct asus_wmi *asus = priv->asus;
 int ret;
 mutex_lock(&asus->wmi_lock);
 ret = asus_rfkill_set(data, blocked);
 mutex_unlock(&asus->wmi_lock);
 return ret;
}
