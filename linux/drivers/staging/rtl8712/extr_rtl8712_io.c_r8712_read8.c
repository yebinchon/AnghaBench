
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int (* _read8 ) (struct intf_hdl*,int ) ;} ;
struct intf_hdl {TYPE_2__ io_ops; } ;
struct _adapter {TYPE_1__* pio_queue; } ;
struct TYPE_3__ {struct intf_hdl intf; } ;


 int stub1 (struct intf_hdl*,int ) ;

u8 r8712_read8(struct _adapter *adapter, u32 addr)
{
 struct intf_hdl *hdl = &adapter->pio_queue->intf;

 return hdl->io_ops._read8(hdl, addr);
}
