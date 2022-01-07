
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* _read16 ) (struct intf_hdl*,int ) ;} ;
struct intf_hdl {TYPE_1__ io_ops; } ;
struct io_priv {struct intf_hdl intf; } ;
struct adapter {struct io_priv iopriv; } ;


 int rtw_le16_to_cpu (int ) ;

u16 _rtw_read16(struct adapter *adapter, u32 addr)
{
 u16 r_val;

 struct io_priv *pio_priv = &adapter->iopriv;
 struct intf_hdl *pintfhdl = &(pio_priv->intf);
 u16 (*_read16)(struct intf_hdl *pintfhdl, u32 addr);

 _read16 = pintfhdl->io_ops._read16;

 r_val = _read16(pintfhdl, addr);
 return rtw_le16_to_cpu(r_val);
}
