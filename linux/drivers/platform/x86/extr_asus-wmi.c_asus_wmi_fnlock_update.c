
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int fnlock_locked; } ;


 int ASUS_WMI_DEVID_FNLOCK ;
 int asus_wmi_set_devstate (int ,int,int *) ;

__attribute__((used)) static void asus_wmi_fnlock_update(struct asus_wmi *asus)
{
 int mode = asus->fnlock_locked;

 asus_wmi_set_devstate(ASUS_WMI_DEVID_FNLOCK, mode, ((void*)0));
}
