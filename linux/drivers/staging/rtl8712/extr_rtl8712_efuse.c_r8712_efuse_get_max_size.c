
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _adapter {int dummy; } ;


 int efuse_available_max_size ;

int r8712_efuse_get_max_size(struct _adapter *adapter)
{
 return efuse_available_max_size;
}
