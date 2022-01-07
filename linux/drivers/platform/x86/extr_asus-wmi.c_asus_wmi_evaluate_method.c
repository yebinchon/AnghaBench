
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int asus_wmi_evaluate_method3 (int ,int ,int ,int ,int *) ;

int asus_wmi_evaluate_method(u32 method_id, u32 arg0, u32 arg1, u32 *retval)
{
 return asus_wmi_evaluate_method3(method_id, arg0, arg1, 0, retval);
}
