
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct intf_hdl {int * intf_dev; int * adapter; scalar_t__ intf_option; } ;
struct _adapter {int dvobjpriv; } ;


 int _SUCCESS ;
 int _init_intf_hdl (struct _adapter*,struct intf_hdl*) ;

__attribute__((used)) static uint register_intf_hdl(u8 *dev, struct intf_hdl *pintfhdl)
{
 struct _adapter *adapter = (struct _adapter *)dev;

 pintfhdl->intf_option = 0;
 pintfhdl->adapter = dev;
 pintfhdl->intf_dev = (u8 *)&adapter->dvobjpriv;
 if (!_init_intf_hdl(adapter, pintfhdl))
  goto register_intf_hdl_fail;
 return _SUCCESS;
register_intf_hdl_fail:
 return 0;
}
