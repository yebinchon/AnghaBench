
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct pgpkt {int data; int offset; int word_en; } ;
struct adapter {int dummy; } ;


 scalar_t__ Efuse_PgPacketWrite (struct adapter*,int ,int,int ) ;
 int Efuse_WordEnableDataWrite (struct adapter*,scalar_t__,int ,int ) ;

__attribute__((used)) static bool hal_EfusePgPacketWriteData(struct adapter *pAdapter, u8 efuseType, u16 *pAddr, struct pgpkt *pTargetPkt)
{
 u16 efuse_addr = *pAddr;
 u8 badworden = 0;
 u32 PgWriteSuccess = 0;

 badworden = 0x0f;
 badworden = Efuse_WordEnableDataWrite(pAdapter, efuse_addr + 1, pTargetPkt->word_en, pTargetPkt->data);
 if (badworden == 0x0F) {

  return 1;
 }

 PgWriteSuccess = Efuse_PgPacketWrite(pAdapter, pTargetPkt->offset, badworden, pTargetPkt->data);
 if (!PgWriteSuccess)
  return 0;
 else
  return 1;
}
