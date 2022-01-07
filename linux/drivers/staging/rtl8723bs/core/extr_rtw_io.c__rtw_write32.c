
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* _write32 ) (struct intf_hdl*,int ,int ) ;} ;
struct intf_hdl {TYPE_1__ io_ops; } ;
struct io_priv {struct intf_hdl intf; } ;
struct adapter {struct io_priv iopriv; } ;


 int RTW_STATUS_CODE (int) ;

int _rtw_write32(struct adapter *adapter, u32 addr, u32 val)
{

 struct io_priv *pio_priv = &adapter->iopriv;
 struct intf_hdl *pintfhdl = &(pio_priv->intf);
 int (*_write32)(struct intf_hdl *pintfhdl, u32 addr, u32 val);
 int ret;

 _write32 = pintfhdl->io_ops._write32;

 ret = _write32(pintfhdl, addr, val);

 return RTW_STATUS_CODE(ret);
}
