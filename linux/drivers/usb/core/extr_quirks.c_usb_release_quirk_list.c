
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * quirk_list ;
 int quirk_mutex ;

void usb_release_quirk_list(void)
{
 mutex_lock(&quirk_mutex);
 kfree(quirk_list);
 quirk_list = ((void*)0);
 mutex_unlock(&quirk_mutex);
}
