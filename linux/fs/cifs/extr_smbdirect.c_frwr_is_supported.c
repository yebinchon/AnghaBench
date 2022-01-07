
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device_attr {int device_cap_flags; scalar_t__ max_fast_reg_page_list_len; } ;


 int IB_DEVICE_MEM_MGT_EXTENSIONS ;

__attribute__((used)) static bool frwr_is_supported(struct ib_device_attr *attrs)
{
 if (!(attrs->device_cap_flags & IB_DEVICE_MEM_MGT_EXTENSIONS))
  return 0;
 if (attrs->max_fast_reg_page_list_len == 0)
  return 0;
 return 1;
}
