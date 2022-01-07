
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _adapter {int dummy; } ;


 int efuse_reg_ctrl (struct _adapter*,int) ;

void r8712_efuse_reg_uninit(struct _adapter *adapter)
{
 efuse_reg_ctrl(adapter, 0);
}
