
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pgpkt {scalar_t__ offset; } ;
struct adapter {int dummy; } ;


 scalar_t__ EFUSE_MAX_SECTION_BASE ;
 int hal_EfusePgPacketWrite1ByteHeader (struct adapter*,int ,int *,struct pgpkt*) ;
 int hal_EfusePgPacketWrite2ByteHeader (struct adapter*,int ,int *,struct pgpkt*) ;

__attribute__((used)) static bool
hal_EfusePgPacketWriteHeader(
    struct adapter *pAdapter,
    u8 efuseType,
    u16 *pAddr,
    struct pgpkt *pTargetPkt)
{
 bool ret = 0;

 if (pTargetPkt->offset >= EFUSE_MAX_SECTION_BASE)
  ret = hal_EfusePgPacketWrite2ByteHeader(pAdapter, efuseType, pAddr, pTargetPkt);
 else
  ret = hal_EfusePgPacketWrite1ByteHeader(pAdapter, efuseType, pAddr, pTargetPkt);

 return ret;
}
