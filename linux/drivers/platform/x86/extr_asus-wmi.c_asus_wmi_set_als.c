
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASUS_WMI_DEVID_ALS_ENABLE ;
 int asus_wmi_set_devstate (int ,int,int *) ;

__attribute__((used)) static void asus_wmi_set_als(void)
{
 asus_wmi_set_devstate(ASUS_WMI_DEVID_ALS_ENABLE, 1, ((void*)0));
}
