
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
struct _io_ops {int _sd_f0_read8; int * _write_port; int * _write_mem; int * _writeN; int * _write32; int * _write16; int * _write8; int * _read_port; int * _read_mem; int * _read32; int * _read16; int * _read8; } ;


 int sdio_f0_read8 ;
 int sdio_read16 ;
 int sdio_read32 ;
 int sdio_read8 ;
 int sdio_read_mem ;
 int sdio_read_port ;
 int sdio_write16 ;
 int sdio_write32 ;
 int sdio_write8 ;
 int sdio_writeN ;
 int sdio_write_mem ;
 int sdio_write_port ;

void sdio_set_intf_ops(struct adapter *adapter, struct _io_ops *ops)
{
 ops->_read8 = &sdio_read8;
 ops->_read16 = &sdio_read16;
 ops->_read32 = &sdio_read32;
 ops->_read_mem = &sdio_read_mem;
 ops->_read_port = &sdio_read_port;

 ops->_write8 = &sdio_write8;
 ops->_write16 = &sdio_write16;
 ops->_write32 = &sdio_write32;
 ops->_writeN = &sdio_writeN;
 ops->_write_mem = &sdio_write_mem;
 ops->_write_port = &sdio_write_port;

 ops->_sd_f0_read8 = sdio_f0_read8;
}
