
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int (* _read8 ) (struct intf_hdl*,int ) ;} ;
struct intf_hdl {TYPE_1__ io_ops; } ;
struct io_priv {struct intf_hdl intf; } ;
struct adapter {struct io_priv iopriv; } ;



u8 _rtw_read8(struct adapter *adapter, u32 addr)
{
 u8 r_val;

 struct io_priv *pio_priv = &adapter->iopriv;
 struct intf_hdl *pintfhdl = &(pio_priv->intf);
 u8 (*_read8)(struct intf_hdl *pintfhdl, u32 addr);

 _read8 = pintfhdl->io_ops._read8;

 r_val = _read8(pintfhdl, addr);
 return r_val;
}
