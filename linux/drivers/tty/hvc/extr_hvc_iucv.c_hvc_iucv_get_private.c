
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct hvc_iucv_private {int dummy; } ;


 scalar_t__ HVC_IUCV_MAGIC ;
 scalar_t__ hvc_iucv_devices ;
 struct hvc_iucv_private** hvc_iucv_table ;

__attribute__((used)) static struct hvc_iucv_private *hvc_iucv_get_private(uint32_t num)
{
 if ((num < HVC_IUCV_MAGIC) || (num - HVC_IUCV_MAGIC > hvc_iucv_devices))
  return ((void*)0);
 return hvc_iucv_table[num - HVC_IUCV_MAGIC];
}
