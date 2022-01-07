
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wmi {int dummy; } ;


 int ASUS_WMI_DSTS_STATUS_BIT ;
 int asus_wmi_get_devstate_bits (struct asus_wmi*,int ,int ) ;

__attribute__((used)) static int asus_wmi_get_devstate_simple(struct asus_wmi *asus, u32 dev_id)
{
 return asus_wmi_get_devstate_bits(asus, dev_id,
       ASUS_WMI_DSTS_STATUS_BIT);
}
