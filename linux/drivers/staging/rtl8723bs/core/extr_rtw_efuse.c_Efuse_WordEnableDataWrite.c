
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int (* Efuse_WordEnableDataWrite ) (struct adapter*,int ,int ,int *,int) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ,int ,int *,int) ;

u8
Efuse_WordEnableDataWrite(struct adapter *padapter,
      u16 efuse_addr,
      u8 word_en,
      u8 *data,
      bool bPseudoTest)
{
 return padapter->HalFunc.Efuse_WordEnableDataWrite(padapter, efuse_addr,
          word_en, data,
          bPseudoTest);
}
