
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct _io_ops {int _write_port; int _write_mem; int _write32; int _write16; int _write8; int _read_port; int _read32; int _read16; int _read8; } ;


 int memset (int *,int ,int) ;
 int r8712_usb_read_port ;
 int r8712_usb_write_mem ;
 int r8712_usb_write_port ;
 int usb_read16 ;
 int usb_read32 ;
 int usb_read8 ;
 int usb_write16 ;
 int usb_write32 ;
 int usb_write8 ;

void r8712_usb_set_intf_ops(struct _io_ops *ops)
{
 memset((u8 *)ops, 0, sizeof(struct _io_ops));
 ops->_read8 = usb_read8;
 ops->_read16 = usb_read16;
 ops->_read32 = usb_read32;
 ops->_read_port = r8712_usb_read_port;
 ops->_write8 = usb_write8;
 ops->_write16 = usb_write16;
 ops->_write32 = usb_write32;
 ops->_write_mem = r8712_usb_write_mem;
 ops->_write_port = r8712_usb_write_port;
}
