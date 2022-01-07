
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int (* ReadEFuse ) (struct adapter*,int ,int ,int ,int *,int) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ,int ,int ,int *,int) ;

void
efuse_ReadEFuse(
 struct adapter *Adapter,
 u8 efuseType,
 u16 _offset,
 u16 _size_byte,
 u8 *pbuf,
bool bPseudoTest
 )
{
 Adapter->HalFunc.ReadEFuse(Adapter, efuseType, _offset, _size_byte, pbuf, bPseudoTest);
}
