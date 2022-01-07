
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wmi {int dsts_id; } ;


 int asus_wmi_evaluate_method (int ,int ,int ,int *) ;

__attribute__((used)) static int asus_wmi_get_devstate(struct asus_wmi *asus, u32 dev_id, u32 *retval)
{
 return asus_wmi_evaluate_method(asus->dsts_id, dev_id, 0, retval);
}
