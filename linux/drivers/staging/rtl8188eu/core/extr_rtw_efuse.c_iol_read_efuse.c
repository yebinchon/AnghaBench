
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;
typedef scalar_t__ s32 ;


 int CMD_READ_EFUSE_MAP ;
 scalar_t__ REG_PKT_BUFF_ACCESS_CTRL ;
 scalar_t__ REG_TDECTRL ;
 int TXPKT_BUF_SELECT ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int efuse_phymap_to_logical (int *,int,int,int *) ;
 int efuse_read_phymap_from_txpktbuf (struct adapter*,int ,int *,int*) ;
 scalar_t__ iol_execute (struct adapter*,int ) ;
 int memset (int *,int,int) ;
 int usb_write8 (struct adapter*,scalar_t__,int ) ;

__attribute__((used)) static s32 iol_read_efuse(struct adapter *padapter, u8 txpktbuf_bndy, u16 offset, u16 size_byte, u8 *logical_map)
{
 s32 status = _FAIL;
 u8 physical_map[512];
 u16 size = 512;

 usb_write8(padapter, REG_TDECTRL + 1, txpktbuf_bndy);
 memset(physical_map, 0xFF, 512);
 usb_write8(padapter, REG_PKT_BUFF_ACCESS_CTRL, TXPKT_BUF_SELECT);
 status = iol_execute(padapter, CMD_READ_EFUSE_MAP);
 if (status == _SUCCESS)
  efuse_read_phymap_from_txpktbuf(padapter, txpktbuf_bndy, physical_map, &size);
 efuse_phymap_to_logical(physical_map, offset, size_byte, logical_map);
 return status;
}
