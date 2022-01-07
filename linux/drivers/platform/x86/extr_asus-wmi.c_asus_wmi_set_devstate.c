
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ASUS_WMI_METHODID_DEVS ;
 int asus_wmi_evaluate_method (int ,int ,int ,int *) ;

__attribute__((used)) static int asus_wmi_set_devstate(u32 dev_id, u32 ctrl_param,
     u32 *retval)
{
 return asus_wmi_evaluate_method(ASUS_WMI_METHODID_DEVS, dev_id,
     ctrl_param, retval);
}
