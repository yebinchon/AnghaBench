
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_device {int dummy; } ;


 int dell_wmi_input_destroy (struct wmi_device*) ;

__attribute__((used)) static int dell_wmi_remove(struct wmi_device *wdev)
{
 dell_wmi_input_destroy(wdev);
 return 0;
}
